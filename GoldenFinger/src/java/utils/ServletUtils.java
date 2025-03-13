package utils;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cart;
import model.Product;
import model.WishList;

public class ServletUtils {

    private static final Logger LOGGER = Logger.getLogger(ServletUtils.class.getName());

    public static final double USD_TO_VND_RATE = 24500;

    private ServletUtils() {
    }

    public static int parseIntParameter(HttpServletRequest request, String paramName, int defaultValue) {
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

    public static double parseDoubleParameter(HttpServletRequest request, String paramName, double defaultValue) {
        try {
            String param = request.getParameter(paramName);
            if (param != null && !param.trim().isEmpty()) {
                return Double.parseDouble(param);
            }
        } catch (NumberFormatException e) {
            LOGGER.log(Level.WARNING, "Invalid parameter", e);
        }
        return defaultValue;
    }

    public static long convertUsdToVnd(double usdAmount) {
        return Math.round(usdAmount * USD_TO_VND_RATE);
    }

    public static String getCookieValue(HttpServletRequest request, String cookieName) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals(cookieName)) {
                    return cookie.getValue();
                }
            }
        }
        return "";
    }

    public static Cart getCartFromCookie(HttpServletRequest request, List<Product> productList) {
        String cartStr = getCookieValue(request, "cart");
        return new Cart(cartStr, productList);
    }

    public static WishList getWishlistFromCookie(HttpServletRequest request, List<Product> productList) {
        String wishlistStr = getCookieValue(request, "wishlist");
        return new WishList(wishlistStr, productList);
    }
}
