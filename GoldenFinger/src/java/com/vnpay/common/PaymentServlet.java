package com.vnpay.common;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import dal.OrderDAO;
import dal.OrderDetailDAO;
import dal.ProductDAO;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Cart;
import model.User;
import utils.ServletUtils;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "PaymentServlet", urlPatterns = {"/payment"})
public class PaymentServlet extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(PaymentServlet.class.getName());
    private final ProductDAO pd = new ProductDAO();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String paymentMethod = req.getParameter("paymentMethod");

        // Validate payment method first
        if (paymentMethod == null || paymentMethod.isEmpty()) {
            req.setAttribute("error", "Payment method is required");
            req.getRequestDispatcher("checkout").forward(req, resp);
            return;
        }

        double amountUsd;

        try {
            amountUsd = ServletUtils.parseDoubleParameter(req, "totalBill", 0);
            if (amountUsd <= 0) {
                resp.sendRedirect("cart");
                return;
            }
        } catch (NumberFormatException e) {
            LOGGER.log(Level.WARNING, "Invalid total bill amount", e);
            resp.sendRedirect("cart");
            return;
        }

        String fullName = req.getParameter("fullname");
        String phone = req.getParameter("phone");
        
        String provinceName = req.getParameter("provinceName");
        String districtName = req.getParameter("districtName");
        String wardName = req.getParameter("wardName");      
        String adressDetail = req.getParameter("address");
        String address = adressDetail + ", " + wardName + ", " + districtName + ", " + provinceName;
        String comment = req.getParameter("comment");
        String bankCode = req.getParameter("bankCode");

        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("account");
        if (user == null) {
            resp.sendRedirect("login");
            return;
        }

        Cart cart = ServletUtils.getCartFromCookie(req, pd.getAllProductByCid(0));
        if (cart.getListItems().isEmpty()) {
            resp.sendRedirect("cart");
            return;
        }

        if ("COD".equals(paymentMethod)) {
            processCodPayment(req, resp, user, cart, fullName, phone, address, comment);
        } else if ("VNPAY".equals(paymentMethod)) {
            processVnpayPayment(req, resp, amountUsd, bankCode);
        } else {
            req.setAttribute("error", "Invalid payment method");
            req.getRequestDispatcher("checkout").forward(req, resp);
        }

    }

    private void processCodPayment(HttpServletRequest req, HttpServletResponse resp,
            User user, Cart cart,
            String fullName, String phone, String address, String comment)
            throws ServletException, IOException {
        Cookie[] cookies = req.getCookies();

        OrderDAO od = new OrderDAO();
        int orderId = od.createOrder(user.getId(), 1, fullName, phone, address, comment, cart);

        if (orderId > 0) {
            OrderDetailDAO odd = new OrderDetailDAO();
            odd.createOrderDetail(cart, orderId);
            pd.updateUnitInStock(cart);
            for (Cookie c : cookies) {
                if (c.getName().equals("cart")) {
                    c.setMaxAge(0);
                    resp.addCookie(c);
                }
            }
            resp.sendRedirect("orderhistory");
        } else {
            req.setAttribute("error", "Failed to create order. Please try again.");
            req.getRequestDispatcher("checkout").forward(req, resp);
        }
    }

    private void processVnpayPayment(HttpServletRequest req, HttpServletResponse resp,
            double amountUsd, String bankCode) throws IOException {

        HttpSession session = req.getSession();
        session.setAttribute("fullName", req.getParameter("fullname"));
        session.setAttribute("phone", req.getParameter("phone"));
        session.setAttribute("address", req.getParameter("address"));
        session.setAttribute("comment", req.getParameter("comment"));

        long amountVnd = ServletUtils.convertUsdToVnd(amountUsd);
        long amount = amountVnd * 100;

        String vnp_Version = "2.1.0";
        String vnp_Command = "pay";
        String orderType = "other";
        String vnp_TxnRef = Config.getRandomNumber(8);
        String vnp_IpAddr = Config.getIpAddress(req);
        String vnp_TmnCode = Config.vnp_TmnCode;

        Map<String, String> vnp_Params = new HashMap<>();
        vnp_Params.put("vnp_Version", vnp_Version);
        vnp_Params.put("vnp_Command", vnp_Command);
        vnp_Params.put("vnp_TmnCode", vnp_TmnCode);
        vnp_Params.put("vnp_Amount", String.valueOf(amount));
        vnp_Params.put("vnp_CurrCode", "VND");

        if (bankCode != null && !bankCode.isEmpty()) {
            vnp_Params.put("vnp_BankCode", bankCode);
        }
        vnp_Params.put("vnp_TxnRef", vnp_TxnRef);
        vnp_Params.put("vnp_OrderInfo", "Thanh toan don hang: " + vnp_TxnRef + " - " + amountUsd + " USD");
        vnp_Params.put("vnp_OrderType", orderType);

        String locate = req.getParameter("language");
        if (locate != null && !locate.isEmpty()) {
            vnp_Params.put("vnp_Locale", locate);
        } else {
            vnp_Params.put("vnp_Locale", "vn");
        }
        vnp_Params.put("vnp_ReturnUrl", Config.vnp_ReturnUrl);
        vnp_Params.put("vnp_IpAddr", vnp_IpAddr);

        Calendar cld = Calendar.getInstance(TimeZone.getTimeZone("Etc/GMT+7"));
        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
        String vnp_CreateDate = formatter.format(cld.getTime());
        vnp_Params.put("vnp_CreateDate", vnp_CreateDate);

        cld.add(Calendar.MINUTE, 15);
        String vnp_ExpireDate = formatter.format(cld.getTime());
        vnp_Params.put("vnp_ExpireDate", vnp_ExpireDate);

        List fieldNames = new ArrayList(vnp_Params.keySet());
        Collections.sort(fieldNames);
        StringBuilder hashData = new StringBuilder();
        StringBuilder query = new StringBuilder();
        Iterator itr = fieldNames.iterator();
        while (itr.hasNext()) {
            String fieldName = (String) itr.next();
            String fieldValue = (String) vnp_Params.get(fieldName);
            if ((fieldValue != null) && (fieldValue.length() > 0)) {
                //Build hash data
                hashData.append(fieldName);
                hashData.append('=');
                hashData.append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));
                //Build query
                query.append(URLEncoder.encode(fieldName, StandardCharsets.US_ASCII.toString()));
                query.append('=');
                query.append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));
                if (itr.hasNext()) {
                    query.append('&');
                    hashData.append('&');
                }
            }
        }
        String queryUrl = query.toString();
        String vnp_SecureHash = Config.hmacSHA512(Config.secretKey, hashData.toString());
        queryUrl += "&vnp_SecureHash=" + vnp_SecureHash;
        String paymentUrl = Config.vnp_PayUrl + "?" + queryUrl;
        com.google.gson.JsonObject job = new JsonObject();
        job.addProperty("code", "00");
        job.addProperty("message", "success");
        job.addProperty("data", paymentUrl);
        job.addProperty("amountUsd", amountUsd);
        job.addProperty("amountVnd", amountVnd);
        job.addProperty("exchangeRate", ServletUtils.USD_TO_VND_RATE);
        Gson gson = new Gson();
        resp.getWriter().write(gson.toJson(job));
        resp.sendRedirect(paymentUrl);
    }

}
