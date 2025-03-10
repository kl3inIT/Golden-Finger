package controller.user;

import dal.UserDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;
import utils.PasswordUtils;

@WebServlet(name = "ProfileServlet", urlPatterns = {"/profile"})
public class ProfileServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("profile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");

        if (user == null) {
            // Redirect to login page if not logged in
            response.sendRedirect("login");
            return;
        }

        String action = request.getParameter("action");

        if ("updateProfile".equals(action)) {
            handleProfileUpdate(request, response, session, user);
        } else if ("changePassword".equals(action)) {
            handlePasswordChange(request, response, session, user);
        } else {
            // Default action if none specified
            request.getRequestDispatcher("profile.jsp").forward(request, response);
        }
    }

    private void handleProfileUpdate(HttpServletRequest request, HttpServletResponse response,
            HttpSession session, User user)
            throws ServletException, IOException {
        // Extract profile data
        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String birthDate = request.getParameter("birthDate");
        String address = request.getParameter("address");

        UserDAO userDAO = new UserDAO();

        // Check if email or phone is already in use
        if (!validateUniqueEmailAndPhone(userDAO, email, phone, user.getUsername(), request)) {
            request.getRequestDispatcher("profile.jsp").forward(request, response);
            return;
        }

        // Update user information
        boolean updated = updateUserProfile(user, userDAO, fullName, email, phone, birthDate, address);

        // Set appropriate message
        if (updated) {
            session.setAttribute("account", user);
            request.setAttribute("success", "Profile updated successfully.");
        } else {
            request.setAttribute("error", "Failed to update profile. Please try again.");
        }

        request.getRequestDispatcher("profile.jsp").forward(request, response);
    }

    private boolean validateUniqueEmailAndPhone(UserDAO userDAO, String email, String phone,
            String username, HttpServletRequest request) {
        // Check if email is already used by another user
        if (userDAO.isEmailInUseByOtherUser(email, username)) {
            request.setAttribute("error", "Email is already in use by another account.");
            return false;
        }

        // Check if phone is already used by another user
        if (userDAO.isPhoneInUseByOtherUser(phone, username)) {
            request.setAttribute("error", "Phone number is already in use by another account.");
            return false;
        }

        return true;
    }

    private boolean updateUserProfile(User user, UserDAO userDAO, String fullName, String email,
            String phone, String birthDate, String address) {
        // Update user object
        user.setFullName(fullName);
        user.setEmail(email);
        user.setPhone(phone);
        user.setBirthDate(birthDate);
        user.setAddress(address);

        // Save to database
        return userDAO.updateUser(user);
    }

    private void handlePasswordChange(HttpServletRequest request, HttpServletResponse response,
            HttpSession session, User user)
            throws ServletException, IOException {
        // Extract password data
        String currentPassword = request.getParameter("currentPassword");
        String newPassword = request.getParameter("newPassword");

        // Verify current password
        if (!verifyCurrentPassword(user, currentPassword, request)) {
            request.getRequestDispatcher("profile.jsp").forward(request, response);
            return;
        }

        // Update password
        UserDAO userDAO = new UserDAO();
        boolean updated = userDAO.updatePassword(user.getUsername(), newPassword);

        // Set appropriate message
        if (updated) {
            // Get updated user with new password and salt
            User updatedUser = userDAO.getUser(user.getUsername());
            session.setAttribute("account", updatedUser);
            request.setAttribute("passwordSuccess", "Password changed successfully.");
        } else {
            request.setAttribute("passwordError", "Failed to change password. Please try again.");
        }

        request.getRequestDispatcher("profile.jsp").forward(request, response);
    }

    private boolean verifyCurrentPassword(User user, String currentPassword, HttpServletRequest request) {
        String hashedCurrentPassword = PasswordUtils.hashPassword(currentPassword, user.getSalt());
        if (!hashedCurrentPassword.equals(user.getPassword())) {
            request.setAttribute("passwordError", "Current password is incorrect.");
            return false;
        }
        return true;
    }


    @Override
    public String getServletInfo() {
        return "Profile management servlet";
    }
}
