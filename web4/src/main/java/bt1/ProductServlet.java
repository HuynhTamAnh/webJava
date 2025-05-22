package bt1;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static List<Product> productList = new ArrayList<>();
    private static int nextId = 1;

    // Initialize with sample data
    static {
        productList.add(new Product(nextId++, "Iphone15", 3000.0, "sản phẩm mới về"));
        productList.add(new Product(nextId++, "SamSung galaxy 21", 2900.0, "thế hệ đột phá"));
        productList.add(new Product(nextId++, "Đồng hồ thụy sỹ", 15000.0, "đẹp khôi chế"));
        productList.add(new Product(nextId++, "Tai nghe airpods", 2000.0, "công nghệ cảng thích"));
        productList.add(new Product(nextId++, "Laptop lenovo", 3000.0, "đổi trả hàng trong vòng 30 ngày miễn phí"));
    }


    public ProductServlet() {
        super();
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Set the product list as request attribute
        request.setAttribute("products", productList);

        // Forward to JSP page
        request.getRequestDispatcher("ProductList.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Set request encoding to handle Vietnamese characters
        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");

        if ("add".equals(action)) {
            addProduct(request, response);
        } else if ("update".equals(action)) {
            updateProduct(request, response);
        } else if ("delete".equals(action)) {
            deleteProduct(request, response);
        }

        // Redirect to prevent form resubmission
        response.sendRedirect("ProductServlet");
    }


    private void addProduct(HttpServletRequest request, HttpServletResponse response) {
        String productName = request.getParameter("productName");
        String priceStr = request.getParameter("price");
        String description = request.getParameter("description");

        try {
            double price = Double.parseDouble(priceStr);
            bt1.Product newProduct = new Product(nextId++, productName, price, description);
            productList.add(newProduct);
        } catch (NumberFormatException e) {
            // Handle invalid price format
            request.setAttribute("error", "Giá sản phẩm không hợp lệ");
        }
    }


    private void updateProduct(HttpServletRequest request, HttpServletResponse response) {
        String idStr = request.getParameter("id");
        String productName = request.getParameter("productName");
        String priceStr = request.getParameter("price");
        String description = request.getParameter("description");

        try {
            int id = Integer.parseInt(idStr);
            double price = Double.parseDouble(priceStr);

            // Find and update the product
            for (Product product : productList) {
                if (product.getId() == id) {
                    product.setProductName(productName);
                    product.setPrice(price);
                    product.setDescription(description);
                    break;
                }
            }
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Dữ liệu không hợp lệ");
        }
    }


    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) {
        String idStr = request.getParameter("id");

        try {
            int id = Integer.parseInt(idStr);
            productList.removeIf(product -> product.getId() == id);
        } catch (NumberFormatException e) {
            request.setAttribute("error", "ID sản phẩm không hợp lệ");
        }
    }


    public static Product getProductById(int id) {
        for (Product product : productList) {
            if (product.getId() == id) {
                return product;
            }
        }
        return null;
    }


    public static List<Product> getAllProducts() {
        return new ArrayList<>(productList);
    }
}