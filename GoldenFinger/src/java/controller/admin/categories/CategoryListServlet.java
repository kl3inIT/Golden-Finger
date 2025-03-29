package controller.admin.categories;

import dal.CategoryDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Category;

@WebServlet(name = "CategoryListServlet", urlPatterns = {"/categorylist"})
public class CategoryListServlet extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(CategoryListServlet.class.getName());
    private final CategoryDAO categoryDAO = new CategoryDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Lấy danh sách tất cả các danh mục
        List<Category> categories = categoryDAO.getAllCategory();
        request.setAttribute("categories", categories);

        // Forward tới trang danh sách danh mục
        request.getRequestDispatcher("dashboard/categorieslist.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        try {
            if ("add".equals(action)) {
                // Xử lý thêm mới danh mục
                String categoryName = request.getParameter("categoryName");
                String description = request.getParameter("description");

                Category newCategory = new Category();
                newCategory.setName(categoryName);
                newCategory.setDescription(description);

                boolean success = categoryDAO.addCategory(newCategory);

                if (success) {
                    LOGGER.info("Category added successfully: " + categoryName);
                } else {
                    LOGGER.warning("Failed to add category: " + categoryName);
                }
            } else if ("update".equals(action)) {
                // Xử lý cập nhật danh mục
                int categoryId = Integer.parseInt(request.getParameter("categoryId"));
                String categoryName = request.getParameter("categoryName");
                String description = request.getParameter("description");

                Category category = new Category();
                category.setId(categoryId);
                category.setName(categoryName);
                category.setDescription(description);

                boolean success = categoryDAO.updateCategory(category);

                if (success) {
                    LOGGER.log(Level.INFO, "Category updated successfully: {0}", categoryName);
                } else {
                    LOGGER.log(Level.WARNING, "Failed to update category: {0}", categoryName);
                }
            } else if ("delete".equals(action)) {
                // Xử lý xóa danh mục
                int categoryId = Integer.parseInt(request.getParameter("categoryId"));
                boolean success = categoryDAO.deleteCategory(categoryId);

                if (success) {
                    LOGGER.log(Level.INFO, "Category deleted successfully: ID {0}", categoryId);
                    // Không trả về nội dung nếu thành công
                } else {
                    LOGGER.log(Level.WARNING, "Failed to delete category: ID {0}", categoryId);
                    response.getWriter().write("Cannot delete this category because it is used by products");
                }

                // Dừng xử lý, không chuyển hướng khi delete (AJAX call)
                return;
            }

            // Chuyển hướng về trang danh sách danh mục
            response.sendRedirect("categorylist");
        } catch (IOException | NumberFormatException e) {
            LOGGER.log(Level.SEVERE, "Error processing category action", e);
            response.sendRedirect("categorylist");
        }
    }

}
