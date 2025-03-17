package filter;

import java.io.IOException;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

@WebFilter(filterName = "AdminFilter", urlPatterns = {"/admin/*", "/accountlist", "/addaccount", "/productlist", "/addproduct", "/orderlist"})
public class AdminFilter implements Filter {

    private static final boolean debug = true;
    private FilterConfig filterConfig = null;

    public AdminFilter() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {

        if (debug) {
            log("AdminFilter: Admin checking");
        }

        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        HttpSession session = httpRequest.getSession(false);
        
        // Check if the user is logged in and has role admin
        boolean isAuthorized = false;

        if (session != null && session.getAttribute("account") != null) {
            User user = (User) session.getAttribute("account");
            // Chỉ cho phép người dùng có roleID = 2 truy cập
            if (user.getRoleId() == 2) {
                isAuthorized = true;
            }
        }

        if (isAuthorized) {
            // Nếu người dùng có quyền, cho phép truy cập
            chain.doFilter(request, response);
        } else {
            // Nếu không có quyền, chuyển hướng đến trang đăng nhập hoặc trang từ chối
            String contextPath = httpRequest.getContextPath();

            // Lưu URL hiện tại để sau khi đăng nhập có thể quay lại
            String requestURI = httpRequest.getRequestURI();
            if (session != null) {
                session.setAttribute("redirectURL", requestURI.substring(contextPath.length()));
            }

            if (session != null && session.getAttribute("account") != null) {
                // Nếu đã đăng nhập nhưng không có quyền
                httpResponse.sendRedirect(contextPath + "/home");
            } else {
                // Nếu chưa đăng nhập
                httpResponse.sendRedirect(contextPath + "/login");
            }
        }
    }

    /**
     * Destroy method for this filter
     */
    @Override
    public void destroy() {
    }

    /**
     * Init method for this filter
     */
    @Override
    public void init(FilterConfig filterConfig) {
        this.filterConfig = filterConfig;
    }

    public void log(String msg) {
        if (filterConfig != null) {
            filterConfig.getServletContext().log(msg);
        } else {
            System.out.println(msg);
        }
    }
}
