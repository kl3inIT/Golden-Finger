package controller.admin.account;

import dal.UserDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.User;

@WebServlet(name = "AccountListServlet", urlPatterns = {"/accountlist"})
public class AccountListServlet extends HttpServlet {

    private UserDAO ud = new UserDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        List<User> listUser = ud.getUsersByRole(1);

        request.setAttribute("listUser", listUser);
        request.getRequestDispatcher("dashboard/accountlist.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("update".equals(action)) {
            String idParam = request.getParameter("id");

            if (idParam != null) {
                int id = Integer.parseInt(idParam);
                boolean success = ud.updateStatusOfUser(id);
            }// Cũng thế

            List<User> listUser = ud.getUsersByRole(1);
            request.setAttribute("listUser", listUser);
            request.getRequestDispatcher("dashboard/accountlist.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
