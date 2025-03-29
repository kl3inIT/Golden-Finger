package controller.shop;

import dal.CategoryDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "HeaderSevlet", urlPatterns = {"/header"})
public class HeaderSevlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        CategoryDAO cd = new CategoryDAO();
        request.setAttribute("categoryList", cd.getAllCategory());
        request.getRequestDispatcher("header.jsp").forward(request, response);
    }

}
