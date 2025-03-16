package controller.shop;

import dal.CategoryDAO;
import dal.ProductDAO;
import dal.SupplierDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Cart;
import model.WishList;
import model.Product;
import utils.ServletUtils;

@WebServlet(name = "ShopServlet", urlPatterns = {"/shop"})
public class ShopServlet extends HttpServlet {

    private static final int PRODUCTS_PER_PAGE = 8;
    private final ProductDAO pd = new ProductDAO();
    private final SupplierDAO sd = new SupplierDAO();
    private final CategoryDAO cd = new CategoryDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int cid = ServletUtils.parseIntParameter(request, "cid", 0);
        int sort = ServletUtils.parseIntParameter(request, "sort", 0);
        int sid = ServletUtils.parseIntParameter(request, "sid", 0);
        int minPrice = ServletUtils.parseIntParameter(request, "minPrice", 0);
        int maxPrice = ServletUtils.parseIntParameter(request, "maxPrice", pd.getMaxPrice());
        int page = ServletUtils.parseIntParameter(request, "page", 1);
        List<Product> productList = pd.getFilteredProducts(cid, sid, minPrice, maxPrice, sort, page, PRODUCTS_PER_PAGE);

        // Calculate pagination
        int totalProduct = pd.getTotalFilteredProducts(cid, sid, minPrice, maxPrice);
        int endPage = calculateEndPage(totalProduct);

        // Set attributes for JSP
        request.setAttribute("productList", productList);
        request.setAttribute("totalProducts", totalProduct);
        setFilterAttributes(request, cid, sid, sort, minPrice, maxPrice, page, endPage);

        Cart cart = ServletUtils.getCartFromCookie(request, productList);
        WishList wishlist = ServletUtils.getWishlistFromCookie(request, productList);
        request.setAttribute("sizeCart", cart.getSizeCart());
        request.setAttribute("sizeWishlist", wishlist.getSizeWishList());
        request.setAttribute("categoryList", cd.getAllCategory());
        request.setAttribute("wishlist", wishlist.getListItems());
        request.setAttribute("supplierCountProductList", sd.getNumberOfProductAlongSuplier());
        request.getRequestDispatcher("shop.jsp").forward(request, response);
    }

    private void setFilterAttributes(HttpServletRequest request, int cid, int sid, int sort,
            int minPrice, int maxPrice, int page, int endPage) {
        request.setAttribute("sid", sid);
        request.setAttribute("cid", cid);
        request.setAttribute("sort", sort);
        request.setAttribute("minPrice", minPrice);
        request.setAttribute("maxPrice", maxPrice);
        request.setAttribute("page", page);
        request.setAttribute("endPage", endPage);
    }

    private int calculateEndPage(int totalProducts) {
        int endPage = totalProducts / PRODUCTS_PER_PAGE;
        if (totalProducts % PRODUCTS_PER_PAGE != 0) {
            endPage++;
        }
        return endPage;
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
