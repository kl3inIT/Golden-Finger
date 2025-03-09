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
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cart;
import model.WishList;
import model.Product;


@WebServlet(name = "ProductListServlet", urlPatterns = {"/shop"})
public class ShopServlet extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(ShopServlet.class.getName());
    private static final int PRODUCTS_PER_PAGE = 3;
    private final ProductDAO pd = new ProductDAO();
    private final SupplierDAO sd = new SupplierDAO();
    private final CategoryDAO cd = new CategoryDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int cid = parseIntParameter(request, "cid", 0);
        int sort = parseIntParameter(request, "sort", 0);
        int sid = parseIntParameter(request, "sid", 0);
        int minPrice = parseIntParameter(request, "minPrice", 0);
        int maxPrice = parseIntParameter(request, "maxPrice", pd.getMaxPrice());
        int page = parseIntParameter(request, "page", 1);
        List<Product> productList = pd.getFilteredProducts(cid, sid, minPrice, maxPrice, sort, page, PRODUCTS_PER_PAGE);

        // Calculate pagination
        int totalProduct = pd.getTotalFilteredProducts(cid, sid, minPrice, maxPrice);
        int endPage = calculateEndPage(totalProduct);

        // Set attributes for JSP
        request.setAttribute("productList", productList);
        request.setAttribute("totalProducts", totalProduct);
        setFilterAttributes(request, cid, sid, sort, minPrice, maxPrice, page, endPage);
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

    private int parseIntParameter(HttpServletRequest request, String paramName, int defaultValue) {
        try {
            String param = request.getParameter(paramName);
            if (param != null && !param.trim().isEmpty()) {
                return Integer.parseInt(param);
            }
        } catch (NumberFormatException e) {
            LOGGER.log(Level.WARNING, "Invalid parameter", e);
        }
        return defaultValue;
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
