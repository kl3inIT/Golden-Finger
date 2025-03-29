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

@WebServlet(name = "RegisterServlet", urlPatterns = {"/register"})
public class RegisterServlet extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(RegisterServlet.class.getName());

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("username");
        String fullName = request.getParameter("fullname");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String birthDate = request.getParameter("birthdate");
        String address = request.getParameter("address");

        UserDAO user = new UserDAO();

        if (user.isAccountExists(username, email, phone)) {
            request.setAttribute("error", "Username, email or phone already exists!");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        boolean isSuccess = user.createUser(username, fullName, password, email, phone, birthDate, address);

        if (isSuccess) {
            LOGGER.log(Level.INFO, "User registered successfully: {0}", username);
            response.sendRedirect("login");
        } else {
            LOGGER.log(Level.WARNING, "Failed to register user: {0}", username);
            request.setAttribute("error", "Registration failed. Please try again later.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }

    }

}
