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
import model.Cart;
import model.WishList;

/**
 *
 * @author nhudi
 */
@WebServlet(name = "ProductListServlet", urlPatterns = {"/shop"})
public class ShopServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        ProductDAO pd = new ProductDAO();
        SupplierDAO sd = new SupplierDAO();
        CategoryDAO cd = new CategoryDAO();

        int cid = 0, sid = 0;
        try {
            cid = Integer.parseInt(request.getParameter("cid"));
            sid = Integer.parseInt(request.getParameter("sid"));

        } catch (Exception e) {
            e.printStackTrace();
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

        if (sid != 0) {
            request.setAttribute("productList", pd.getProductBySupplierID(sid));
        } else {
            request.setAttribute("productList", pd.getAllProductByCid(cid));
        }
        request.setAttribute("sizeCart", cart.getSizeCart());
        request.setAttribute("sizeWishlist", wishlist.getSizeWishList());
        request.setAttribute("categoryList", cd.getAllCategory());
               request.setAttribute("wishlist", wishlist.getListItems());
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
