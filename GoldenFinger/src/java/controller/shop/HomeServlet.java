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
import java.util.List;
import model.Cart;
import model.Product;
import model.WishList;
import utils.ServletUtils;

@WebServlet(name = "HomeServlet", urlPatterns = {"/home"})
public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        ProductDAO pd = new ProductDAO();
        CategoryDAO cd = new CategoryDAO();
        SupplierDAO sd = new SupplierDAO();

        Cart cart = ServletUtils.getCartFromCookie(request, pd.getAllProductByCid(0));
        WishList wishlist = ServletUtils.getWishlistFromCookie(request, pd.getAllProductByCid(0));
        
        //Get list trending
        List<Product> listProductsTrending = pd.getTrendingProducts();
        List<Product> listProductsRate = pd.getTopRatedProducts();
        List<Product> listProductsSelling = pd.getTopSellingProducts(6);

        request.setAttribute("listProductsTrending", listProductsTrending);
        request.setAttribute("listProductsRate", listProductsRate);
        request.setAttribute("listProductsSelling", listProductsSelling);
        request.setAttribute("sizeCart", cart.getSizeCart());
        request.setAttribute("sizeWishlist", wishlist.getSizeWishList());
        request.setAttribute("wishlist", wishlist.getListItems());
        request.setAttribute("categoryList", cd.getAllCategory());
        request.setAttribute("saleProduct", pd.getSaleProduct());
        request.setAttribute("supplierCountProductList", sd.getNumberOfProductAlongSuplier());
        request.setAttribute("newProduct", pd.getNewProduct());
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
