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
import java.util.logging.Logger;

/**
 * Filter to redirect direct JSP access to the home servlet
 */
@WebFilter("/*")
public class HomeFilter implements Filter {
    
    private static final Logger LOGGER = Logger.getLogger(HomeFilter.class.getName());
    private FilterConfig filterConfig;
    
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.filterConfig = filterConfig;
        LOGGER.info("HomeFilter initialized");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        
        String url = httpRequest.getServletPath();
        
        // Prevent direct access to JSP files
        if (url.endsWith(".jsp") && !url.equals("/error.jsp")) {
            LOGGER.info("Redirecting direct JSP access");
            httpResponse.sendRedirect(httpRequest.getContextPath() + "/home");
            return;
        }
        
        // Continue the filter chain
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
        this.filterConfig = null;
        LOGGER.info("HomeFilter destroyed");
    }
}
