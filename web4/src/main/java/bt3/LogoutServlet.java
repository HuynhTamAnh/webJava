package bt3;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LogoutServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processLogout(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processLogout(request, response);
    }

    private void processLogout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get current session
        HttpSession session = request.getSession(false);

        if (session != null) {
            session.invalidate();
        }

        // Set logout message
        request.setAttribute("pageTitle", "Đăng xuất");
        request.setAttribute("pageContent",
                "<div style='text-align: center; padding: 40px;'>" +
                        "<h2 style='color: #2E86AB;'>Đăng xuất thành công!</h2>" +
                        "<p>Bạn đã đăng xuất khỏi hệ thống.</p>" +
                        "<br>" +
                        "<a href='MainServlet?exercise=2' style='color: #2E86AB; text-decoration: underline;'>Quay lại trang đăng nhập</a>" +
                        "</div>"
        );

        request.getRequestDispatcher("genericPage.jsp").forward(request, response);
    }
}