package controller.user;

import dal.UserDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

@WebServlet(name = "ForgotPasswordServlet", urlPatterns = {"/forgot-password"})
public class ForgotPasswordServlet extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(ForgotPasswordServlet.class.getName());

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String step = request.getParameter("step");

            if ("1".equals(step)) {
                // Step 1: Email verification
                handleEmailVerification(request, response);
            } else if ("2".equals(step)) {
                // Step 2: Password reset
                handlePasswordReset(request, response);
            } else {
                // Invalid step
                request.setAttribute("error", "Invalid request");
                request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
            }
        } catch (ServletException | IOException e) {
            LOGGER.log(Level.SEVERE, "Error during password reset", e);
            request.setAttribute("error", "An error occurred. Please try again later.");
            request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
        }
    }

    private void handleEmailVerification(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");

        // Check if email exists in database
        UserDAO userDAO = new UserDAO();
        User user = userDAO.getUserByEmail(email);

        if (user == null) {
            // Email not found
            request.setAttribute("error", "Email not valid");
            request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
            return;
        }

        // Email exists, store in session
        HttpSession session = request.getSession();
        session.setAttribute("email", email);
        session.setAttribute("userName", user.getUsername());

        // Redirect to step 2
        response.sendRedirect("forgot-password?step=2");
    }

    private void handlePasswordReset(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String userName = (String) session.getAttribute("userName");

        String newPassword = request.getParameter("newPassword");

        // Update password
        UserDAO userDAO = new UserDAO();

        boolean passwordUpdated = userDAO.updatePassword(userName, newPassword);

        if (passwordUpdated) {
            // Password updated successfully
            // Clear session attributes
            session.removeAttribute("email");
            session.removeAttribute("userName");

            request.setAttribute("success", "Password has been reset successfully");
            request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
        } else {
            request.setAttribute("error", "Failed to update password. Please try again.");
            request.getRequestDispatcher("forgot-password.jsp?step=2").forward(request, response);
        }
    }

}
