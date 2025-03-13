package com.vnpay.common;

import dal.OrderDAO;
import dal.OrderDetailDAO;
import dal.ProductDAO;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
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

@WebServlet(name = "VNPayReturnServlet", urlPatterns = {"/vnpayreturn"})
public class VNPayReturnServlet extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(VNPayReturnServlet.class.getName());

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        LOGGER.log(Level.INFO, "VNPay Return received");

        // Lấy thông tin từ VNPay trả về
        Map<String, String> fields = new HashMap<>();
        for (Enumeration<String> params = request.getParameterNames(); params.hasMoreElements();) {
            String fieldName = params.nextElement();
            String fieldValue = request.getParameter(fieldName);
            if ((fieldValue != null) && (fieldValue.length() > 0)) {
                fields.put(fieldName, URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));
            }
        }

        // Log all parameters for debugging
        for (Map.Entry<String, String> entry : fields.entrySet()) {
            LOGGER.log(Level.INFO, "VNPay Return parameter: {0}={1}", new Object[]{entry.getKey(), entry.getValue()});
        }

        // Xác thực chữ ký từ VNPay
        String vnp_SecureHash = request.getParameter("vnp_SecureHash");
        if (fields.containsKey("vnp_SecureHashType")) {
            fields.remove("vnp_SecureHashType");
        }
        if (fields.containsKey("vnp_SecureHash")) {
            fields.remove("vnp_SecureHash");
        }

        // Kiểm tra chữ ký
        String signValue = Config.hashAllFields(fields);
        boolean checkSignature = signValue.equals(vnp_SecureHash);

        // Lấy thông tin giao dịch từ VNPay response
        String vnp_ResponseCode = request.getParameter("vnp_ResponseCode");
        String vnp_TxnRef = request.getParameter("vnp_TxnRef");
        String vnp_TransactionNo = request.getParameter("vnp_TransactionNo");
        String vnp_PayDate = request.getParameter("vnp_PayDate");
        String vnp_BankCode = request.getParameter("vnp_BankCode");
        String vnp_Amount = request.getParameter("vnp_Amount");
        String vnp_OrderInfo = request.getParameter("vnp_OrderInfo");

        // Khởi tạo các giá trị mặc định
        boolean paymentSuccess = false;
        String errorMessage = "Payment failed";
        int orderId = 0;
        String orderDate = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss").format(new Date());
        double amountUsd = 0.0;
        long amountVnd = 0;

        try {
            // Chuyển đổi số tiền từ VND (đã nhân 100) về USD
            if (vnp_Amount != null && !vnp_Amount.isEmpty()) {
                amountVnd = Long.parseLong(vnp_Amount) / 100; // VNPay gửi amount * 100
                amountUsd = (double) amountVnd / ServletUtils.USD_TO_VND_RATE;
            }
        } catch (NumberFormatException e) {
            LOGGER.log(Level.WARNING, "Error parsing amount", e);
        }

        // Lấy thông tin người dùng từ session
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");

        if (user == null) {
            LOGGER.log(Level.WARNING, "User not found in session");
            request.setAttribute("paymentSuccess", false);
            request.setAttribute("errorMessage", "User session expired. Please login and try again.");
            request.getRequestDispatcher("vnpayreturn.jsp").forward(request, response);
            return;
        }

        // Lấy thông tin giao hàng từ session
        String fullName = (String) session.getAttribute("fullName");
        String phone = (String) session.getAttribute("phone");
        String address = (String) session.getAttribute("address");
        String comment = (String) session.getAttribute("comment");
        
        Cookie[] cookies = request.getCookies();

        // Kiểm tra kết quả thanh toán
        if (checkSignature) {
            if ("00".equals(vnp_ResponseCode)) {
                try {
                    // Thanh toán thành công, tạo đơn hàng
                    ProductDAO pd = new ProductDAO();
                    Cart cart = ServletUtils.getCartFromCookie(request, pd.getAllProductByCid(0));

                    if (cart.getListItems().isEmpty()) {
                        LOGGER.log(Level.WARNING, "Cart is empty when processing VNPay return");
                        request.setAttribute("paymentSuccess", false);
                        request.setAttribute("errorMessage", "Your cart is empty!");
                        request.getRequestDispatcher("vnpayreturn.jsp").forward(request, response);
                        return;
                    }

                    OrderDAO od = new OrderDAO();
                    OrderDetailDAO odd = new OrderDetailDAO();

                    // Tạo đơn hàng
                    orderId = od.createOrder(user.getId(), 2, fullName, phone, address, comment, cart);

                    if (orderId > 0) {
                        // Tạo chi tiết đơn hàng
                        odd.createOrderDetail(cart, orderId);

                        // Cập nhật số lượng sản phẩm
                        pd.updateUnitInStock(cart);

                        // Xóa giỏ hàng
                        for (Cookie c : cookies) {
                            if (c.getName().equals("cart")) {
                                c.setMaxAge(0);
                                response.addCookie(c);
                            }
                        }
                        cart.removeAllItem();
                        paymentSuccess = true;
                        errorMessage = "";

                        LOGGER.log(Level.INFO, "Order created successfully: {0}", orderId);
                    } else {
                        LOGGER.log(Level.WARNING, "Failed to create order after successful payment");
                        errorMessage = "Payment was successful, but order creation failed. Please contact customer support.";
                    }
                } catch (Exception e) {
                    LOGGER.log(Level.SEVERE, "Error processing successful payment", e);
                    errorMessage = "An error occurred while processing your payment. Please contact customer support.";
                }
            } else {
                // Thanh toán thất bại
                LOGGER.log(Level.WARNING, "Payment failed with code: {0}", vnp_ResponseCode);
                errorMessage = getResponseCodeMessage(vnp_ResponseCode);
            }
        } else {
            // Chữ ký không hợp lệ
            LOGGER.log(Level.WARNING, "Invalid signature from payment gateway");
            errorMessage = "Invalid signature from payment gateway. The transaction may be tampered.";
        }

        // Đặt các thuộc tính cho trang vnpayreturn.jsp
        request.setAttribute("paymentSuccess", paymentSuccess);
        request.setAttribute("errorMessage", errorMessage);
        request.setAttribute("vnp_TxnRef", vnp_TxnRef);
        request.setAttribute("vnp_PayDate", formatVnpayDate(vnp_PayDate));
        request.setAttribute("vnp_BankCode", vnp_BankCode);
        request.setAttribute("vnp_TransactionNo", vnp_TransactionNo);
        request.setAttribute("vnp_ResponseCode", vnp_ResponseCode);
        request.setAttribute("orderId", orderId);
        request.setAttribute("orderDate", orderDate);
        request.setAttribute("amountUsd", amountUsd);
        request.setAttribute("amountVnd", amountVnd);
        request.setAttribute("exchangeRate", ServletUtils.USD_TO_VND_RATE);

        // Chuyển hướng đến trang kết quả thanh toán
        request.getRequestDispatcher("vnpayreturn.jsp").forward(request, response);
    }


    private String formatVnpayDate(String vnpDate) {
        if (vnpDate == null || vnpDate.length() != 14) {
            return new SimpleDateFormat("dd/MM/yyyy HH:mm:ss").format(new Date());
        }

        try {
            SimpleDateFormat vnpFormat = new SimpleDateFormat("yyyyMMddHHmmss");
            SimpleDateFormat displayFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
            Date date = vnpFormat.parse(vnpDate);
            return displayFormat.format(date);
        } catch (Exception e) {
            LOGGER.log(Level.WARNING, "Error parsing VNPay date", e);
            return new SimpleDateFormat("dd/MM/yyyy HH:mm:ss").format(new Date());
        }
    }

    private String getResponseCodeMessage(String responseCode) {
        switch (responseCode) {
            case "01":
                return "Transaction not completed (customer canceled)";
            case "02":
                return "Transaction error";
            case "03":
                return "Incorrect card name";
            case "04":
                return "Invalid card";
            case "05":
                return "Payment failed due to account balance issues";
            case "06":
                return "Internal system error";
            case "07":
                return "Transaction suspected of fraud";
            case "09":
                return "Card/Account has authentication issues";
            case "10":
                return "Exceeded transaction limit";
            case "11":
                return "Expired payment request";
            case "12":
                return "Invalid payment token";
            case "13":
                return "Payment already processed";
            case "24":
                return "Invalid customer information";
            case "51":
                return "Account does not have enough balance";
            case "65":
                return "Account has exceeded daily transaction limit";
            case "75":
                return "Incorrect password too many times";
            case "79":
                return "Format of transaction authentication information is incorrect";
            case "99":
                return "Other errors";
            default:
                return "Payment failed with code: " + responseCode;
        }
    }
}
