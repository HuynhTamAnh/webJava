package bt4;

import bt1.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet("/productList")
public class listProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Product pr1 = new Product("1", "Sản phẩm 01", null, "Mô tả sản phẩm 01");
        Product pr2 = new Product(null, "Sản phẩm 02", 40000.0, "Mô tả sản phẩm 02");
        Product pr3 = new Product("3", null, 3000.0, "Mô tả sp 03");
        Product pr4 = new Product("4", "sản phẩm 4", 4576.0, null);
        List<Product> productList = Arrays.asList(rp1,pr2,pr3,pr4);
        req.setAttribute("products",productList);
        req.getRequestDispatcher("/bt4/listProduct.jsp").forward(req,resp);
    }
}