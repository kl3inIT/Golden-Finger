package controller.shop;

import dal.CategoryDAO;
import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Cart;
import model.WishList;


@WebServlet(name = "WishListServlet", urlPatterns = {"/wishlist"})
public class WishListServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet WishListServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet WishListServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        CategoryDAO cd = new CategoryDAO();
        ProductDAO pd = new ProductDAO();
        
        //get cart and wishlist from cookie
        String txt = "";
        String txt2 = "";
        Cookie[] cookies = request.getCookies();
        for (Cookie c : cookies) {
            if (c.getName().equals("cart")) {
                txt = c.getValue();
            }
            if(c.getName().equals("wishlist")){
                txt2 = c.getValue();
            }
        }
        

        Cart cart = new Cart(txt, pd.getAllProductByCid(0));
        WishList wishlist = new WishList(txt2, pd.getAllProductByCid(0));
        request.setAttribute("sizeWishlist", wishlist.getSizeWishList());
        request.setAttribute("sizeCart", cart.getSizeCart());
        request.setAttribute("wishlist", wishlist.getListItems());
        request.setAttribute("categoryList", cd.getAllCategory());
        request.getRequestDispatcher("wishlist.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
