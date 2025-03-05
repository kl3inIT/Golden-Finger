package controller.shop;

import dal.CategoryDAO;
import dal.ProductDAO;
import dal.SupplierDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cart;
import model.WishList;

@WebServlet(name = "ProductListServlet", urlPatterns = {"/shop"})
public class ShopServlet extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(ShopServlet.class.getName());

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int cid = 0;
        int sid = 0;

        try {
            String cidParam = request.getParameter("cid");
            String sidParam = request.getParameter("sid");
            if (cidParam != null && !cidParam.trim().isEmpty()) {
                cid = Integer.parseInt(cidParam);
            }
            if (sidParam != null && !sidParam.trim().isEmpty()) {
                sid = Integer.parseInt(sidParam);
            }
        } catch (NumberFormatException e) {
            LOGGER.log(Level.WARNING, "Invalid category or supplier ID", e);
        }

        ProductDAO pd = new ProductDAO();
        SupplierDAO sd = new SupplierDAO();
        CategoryDAO cd = new CategoryDAO();

        if (cid != 0) {
            request.setAttribute("productList", pd.getAllProductByCid(cid));
        } else if (sid != 0) {
            request.setAttribute("productList", pd.getProductBySupplierID(sid));
        } else {
            int totalProducts = pd.getTotalProduct();
            int endPage = totalProducts / 3;
            if (totalProducts % 3 != 0) {
                endPage++;
            }


            int page = 1;
            try {
                String pageParam = request.getParameter("page");
                if (pageParam != null && !pageParam.trim().isEmpty()) {
                    page = Integer.parseInt(pageParam);
                }
            } catch (NumberFormatException e) {
                LOGGER.log(Level.WARNING, "Invalid page parameter", e);
            }

            request.setAttribute("productList", pd.pagingProduct(page));
            request.setAttribute("totalProducts", totalProducts);
            request.setAttribute("page", page);
            request.setAttribute("endPage", endPage);
        }       
        String txt = "";
        String txt2 = "";
        Cookie[] cookies = request.getCookies();
        for (Cookie c : cookies) {
            if (c.getName().equals("cart")) {
                txt = c.getValue();
            }
            if (c.getName().equals("wishlist")) {
                txt2 = c.getValue();
            }
        }
        Cart cart = new Cart(txt, pd.getAllProductByCid(0));
        WishList wishlist = new WishList(txt2, pd.getAllProductByCid(0));
        request.setAttribute("sizeCart", cart.getSizeCart());
        request.setAttribute("sizeWishlist", wishlist.getSizeWishList());
        request.setAttribute("categoryList", cd.getAllCategory());
        request.setAttribute("supplierCountProductList", sd.getNumberOfProductAlongSuplier());
        request.getRequestDispatcher("shop.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
