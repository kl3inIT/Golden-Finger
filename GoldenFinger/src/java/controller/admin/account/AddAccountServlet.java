package controller.admin.account;

import dal.UserDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "AddAccountServlet", urlPatterns = {"/addaccount"})
public class AddAccountServlet extends HttpServlet {

    private final UserDAO ud = new UserDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("dashboard/addaccount.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String role = request.getParameter("role");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String status = request.getParameter("status");
        String phone = request.getParameter("phone");
        String dob = request.getParameter("dob");  
        ud.createUserByAdmin(username, name, password, email, phone, dob, address, status, role);
        response.sendRedirect("accountlist");
    }

}
