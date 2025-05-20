package bt6;

import bt6.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/productServlet")
public class ProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("product.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Lấy thông tin sản phẩm từ form
        String id = req.getParameter("id");
        String productName = req.getParameter("productName");
        double price = Double.parseDouble(req.getParameter("price"));
        String description = req.getParameter("description");
        int stock = Integer.parseInt(req.getParameter("stock"));
        String status = req.getParameter("status");

        // Tạo đối tượng sản phẩm mới
        Product newProduct = new Product(id, productName, price, description, stock, status);

        // Lấy danh sách sản phẩm từ biến ngữ cảnh (application scope)
        ArrayList<Product> productList = (ArrayList<Product>) getServletContext().getAttribute("productList");

        // Nếu danh sách chưa tồn tại, tạo mới
        if (productList == null) {
            productList = new ArrayList<>();
        }

        // Thêm sản phẩm mới vào danh sách
        productList.add(newProduct);

        // Lưu danh sách vào biến ngữ cảnh (application scope) sử dụng setAttribute
        getServletContext().setAttribute("productList", productList);

        // Chuyển hướng về trang product.jsp
        resp.sendRedirect(req.getContextPath() + "/productServlet");
    }
}