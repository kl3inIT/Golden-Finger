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
            response.sendRedirect("home");
        } else {
            LOGGER.log(Level.WARNING, "Fail to login for user: {0}", username);
            request.setAttribute("error", "Invalid Information!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
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
