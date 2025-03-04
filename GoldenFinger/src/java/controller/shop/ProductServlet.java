package controller.shop;

import dal.CategoryDAO;
import dal.ProductDAO;
import dal.SupplierDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Cart;

/**
 *
 * @author nhudi
 */
@WebServlet(name="ProductDetailServlet", urlPatterns={"/product"})
public class ProductServlet extends HttpServlet {
   

    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int pid = Integer.parseInt(request.getParameter("pid"));
        ProductDAO pd = new ProductDAO();
        SupplierDAO sd = new SupplierDAO();
        CategoryDAO cd = new CategoryDAO();
        String txt = "";
        Cookie[] cookies = request.getCookies();
        for(Cookie c : cookies){
            if(c.getName().equals("cart")){
                txt = c.getValue();
            }
        }
        Cart cart = new Cart(txt, pd.getAllProductByCid(0));
        
        request.setAttribute("sizeCart", cart.getSizeCart());
        request.setAttribute("product", pd.getProductById(pid));
        request.setAttribute("supplier", sd.getSupplierByProductId(pid));
        request.setAttribute("category", cd.getCategoryByProductId(pid));
        request.setAttribute("categoryList", cd.getAllCategory());
        request.getRequestDispatcher("product.jsp").forward(request, response);
    } 


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    }



}
