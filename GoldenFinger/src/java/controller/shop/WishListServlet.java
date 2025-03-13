package controller.shop;

import dal.CategoryDAO;
import dal.ProductDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Cart;
import model.WishList;
import utils.ServletUtils;

@WebServlet(name = "WishListServlet", urlPatterns = {"/wishlist"})
public class WishListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        CategoryDAO cd = new CategoryDAO();
        ProductDAO pd = new ProductDAO();             

        Cart cart = ServletUtils.getCartFromCookie(request, pd.getAllProductByCid(0));
        WishList wishlist = ServletUtils.getWishlistFromCookie(request, pd.getAllProductByCid(0));
        request.setAttribute("sizeWishlist", wishlist.getSizeWishList());
        request.setAttribute("sizeCart", cart.getSizeCart());
        request.setAttribute("wishlist", wishlist.getListItems());
        request.setAttribute("categoryList", cd.getAllCategory());
        request.getRequestDispatcher("wishlist.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int pid = Integer.parseInt(request.getParameter("productId"));
        String type = request.getParameter("type");

        ProductDAO pd = new ProductDAO();
        String txt = "";
        Cookie[] cookies = request.getCookies();
        
        // add to wishlist
        if (type.equals("add")) {
            // get wishlist from cookie
            for (Cookie c : cookies) {
                if (c.getName().equals("wishlist")) {
                    txt = c.getValue();
                }
            }

            if (txt.isEmpty()) {
                txt += pid;
            } else {
                txt += "/" + pid;
            }

            WishList wishlist = new WishList(txt, pd.getAllProductByCid(0));

            //set cookie after add
            for (Cookie c : cookies) {
                if (c.getName().equals("wishlist")) {
                    txt = c.getValue();
                    c.setMaxAge(0);
                }
            }
            Cookie wislistCookie = new Cookie("wishlist", wishlist.listWishListToString());
            wislistCookie.setMaxAge(60 * 60 * 24 * 60);
            response.addCookie(wislistCookie);
        }

        // remove from wishlist
        if (type.equals("remove")) {
            // get wishlist from cookie
            for (Cookie c : cookies) {
                if (c.getName().equals("wishlist")) {
                    txt = c.getValue();
                }
            }

            WishList wishlist = new WishList(txt, pd.getAllProductByCid(0));
            wishlist.removeItemByProductId(pid);
            //set cookie after after
            for (Cookie c : cookies) {
                if (c.getName().equals("wishlist")) {
                    txt = c.getValue();
                    c.setMaxAge(0);
                }
            }
            Cookie wislistCookie = new Cookie("wishlist", wishlist.listWishListToString());
            wislistCookie.setMaxAge(60 * 60 * 24 * 60);
            response.addCookie(wislistCookie);
            response.sendRedirect("wishlist");
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
