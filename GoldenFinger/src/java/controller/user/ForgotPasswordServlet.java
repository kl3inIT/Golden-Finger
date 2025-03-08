package controller.user;

import dal.UserDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;
import utils.PasswordUtils;

@WebServlet(name = "ForgotPasswordServlet", urlPatterns = {"/forgot-password"})
public class ForgotPasswordServlet extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(ForgotPasswordServlet.class.getName());

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("forgotpassword.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("forgotpassword.jsp");
        try {
            String email = request.getParameter("email");

            if (email == null || email.trim().isEmpty()) {
                request.setAttribute("error", "Email is required");
                request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
                return;
            }

            UserDAO userDao = new UserDAO();
            User user = userDao.getUserByEmail(email);

            if (user == null) {
                request.setAttribute("error", "Email not found");
                request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
                return;
            }

            // Tạo mật khẩu mới ngẫu nhiên
            String newPassword = PasswordUtils.generateRandomPassword(10);

            // Cập nhật mật khẩu mới
            boolean updated = userDao.updatePassword(user.getUsername(), newPassword);

            if (updated) {
                // Trong thực tế, bạn sẽ gửi email với mật khẩu mới
                // Ở đây chúng ta chỉ hiển thị trên trang web để demo
                LOGGER.log(Level.INFO, "Password reset for user: {0}", user.getUsername());
                request.setAttribute("success", "Password has been reset. New password: " + newPassword);
                request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
            } else {
                request.setAttribute("error", "Failed to reset password. Please try again.");
                request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
            }
        } catch (ServletException | IOException e) {
            LOGGER.log(Level.SEVERE, "Error during password reset", e);
            request.setAttribute("error", "An error occurred. Please try again later.");
            request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
