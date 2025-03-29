package controller.shop;

import dal.CategoryDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "FooterServlet", urlPatterns = {"/footer"})
public class FooterServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CategoryDAO cd = new CategoryDAO();
        request.setAttribute("categoryList", cd.getAllCategory());
        request.getRequestDispatcher("footer.jsp").forward(request, response);
    }

}
