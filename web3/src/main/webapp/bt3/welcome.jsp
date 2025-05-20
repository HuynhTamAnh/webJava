<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/20/2025
  Time: 8:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="welcome-box">
  <h1>Chào mừng bạn đến với trang web của chúng tôi!</h1>
  <p>Xin chào <%= request.getParameter("user") %>, cảm ơn bạn đã ghé thăm.</p>
  <p>Đây là trang chào mừng được chuyển hướng từ trang chủ sử dụng jsp:forward.</p>
  <p>Thời gian hiện tại: <%= new java.util.Date() %></p>
</div>
</body>
</html>
