package bt3;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Hardcoded credentials for demo (in real app, use database)
    private static final String VALID_USERNAME = "admin";
    private static final String VALID_PASSWORD = "123456";

    public LoginServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Redirect GET requests to login page
        response.sendRedirect("MainServlet?exercise=2");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Set response content type
        response.setContentType("text/html;charset=UTF-8");

        // Get form parameters
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Validate input
        if (username == null || username.trim().isEmpty() ||
                password == null || password.trim().isEmpty()) {

            request.setAttribute("message", "Vui lòng nhập đầy đủ username và password!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        // Check credentials
        if (VALID_USERNAME.equals(username.trim()) && VALID_PASSWORD.equals(password)) {
            // Login successful
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            session.setAttribute("loginTime", System.currentTimeMillis());

            // Redirect to success page
            handleLoginSuccess(request, response);

        } else {
            // Login failed
            request.setAttribute("message", "Username hoặc password không đúng!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    private void handleLoginSuccess(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");

        request.setAttribute("pageTitle", "Đăng nhập thành công");
        request.setAttribute("pageContent",
                "<div style='text-align: center; padding: 40px;'>" +
                        "<h2 style='color: green;'>Đăng nhập thành công!</h2>" +
                        "<p>Chào mừng <strong>" + username + "</strong> đã đăng nhập vào hệ thống.</p>" +
                        "<p>Bạn có thể sử dụng menu điều hướng phía trên để truy cập các trang khác.</p>" +
                        "<br>" +
                        "<a href='LogoutServlet' style='color: #2E86AB; text-decoration: underline;'>Đăng xuất</a>" +
                        "</div>"
        );

        request.getRequestDispatcher("genericPage.jsp").forward(request, response);
    }
}