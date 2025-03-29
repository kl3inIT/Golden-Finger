package controller.user;

import dal.UserDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;
import utils.PasswordUtils;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "Login", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(LoginServlet.class.getName());

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        // Kiểm tra nếu người dùng đã đăng nhập
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("account") != null) {
            // Người dùng đã đăng nhập, chuyển hướng về trang chính
            response.sendRedirect("home");
            return;
        }
        
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String rememberMe = request.getParameter("remember");

        UserDAO userDao = new UserDAO();
        User user = userDao.getUser(username);
        if (user != null && user.getStatus() == 1 && PasswordUtils.verifyPassword(password, user.getPassword(), user.getSalt())) {
            HttpSession session = request.getSession();
            session.setAttribute("account", user);

            Cookie usernameCookie = new Cookie("username", username);
            Cookie rememberCookie = new Cookie("rememberMe", rememberMe);

            // Handle remember me
            if (rememberMe != null) {
                // Only store username in cookie, never password
                usernameCookie.setMaxAge(60 * 60 * 24 * 30); // 30 days
                rememberCookie.setMaxAge(60 * 60 * 24 * 30); // 30 days
            } else {
                // Clear cookies if not remember me
                usernameCookie.setMaxAge(0);
                rememberCookie.setMaxAge(0);
            }

            response.addCookie(usernameCookie);
            response.addCookie(rememberCookie);

            LOGGER.log(Level.INFO, "User logged in: {0}", username);
            
            // Kiểm tra và chuyển hướng đến trang đã lưu trước đó
            String redirectURL = (String) session.getAttribute("redirectURL");
            if (redirectURL != null && !redirectURL.isEmpty()) {
                // Xóa URL đã lưu để tránh redirect sai trong tương lai
                session.removeAttribute("redirectURL");
                // Kiểm tra xem người dùng có quyền truy cập không
                if (user.getRoleId() == 2 || !redirectURL.startsWith("/admin")) {
                    response.sendRedirect(request.getContextPath() + redirectURL);
                    return;
                }
            }
            
            
            // Mặc định: chuyển hướng đến trang chủ
            response.sendRedirect("home");
        } else {
            LOGGER.log(Level.WARNING, "Fail to login for user: {0}", username);
            request.setAttribute("error", "Invalid Information!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

}
