<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/20/2025
  Time: 8:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Quản lý thông tin người dùng</h1>

<%
  // Xử lý khi form được gửi đi
  if (request.getMethod().equalsIgnoreCase("POST")) {
    String name = request.getParameter("name");
    String email = request.getParameter("email");

    // Lưu thông tin vào biến ngữ cảnh với setAttribute
    session.setAttribute("userName", name);
    session.setAttribute("userEmail", email);
  }
%>

<form method="post" action="">
  <div>
    <label for="name">Tên người dùng:</label>
    <input type="text" id="name" name="name">
  </div>
  <div>
    <label for="email">Email:</label>
    <input type="email" id="email" name="email">
  </div>
  <button type="submit">Lưu thông tin</button>
</form>

<hr>

<h2>Thông tin người dùng đã lưu</h2>
<%
  // lấy thông tin
  String userName = (String) session.getAttribute("userName");
  String userEmail = (String) session.getAttribute("userEmail");

  // Hiển thị thông tin người dùng nếu có
  if (userName != null && userEmail != null) {
%>
<p><strong>Tên:</strong> <%= userName %></p>
<p><strong>Email:</strong> <%= userEmail %></p>
<% } else { %>
<p>Chưa có thông tin người dùng</p>
<% } %>
</body>
</html>
