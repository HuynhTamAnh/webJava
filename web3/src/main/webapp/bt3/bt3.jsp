<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/20/2025
  Time: 8:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Trang chủ</h1>
<p>Đang chuyển hướng đến trang chào mừng...</p>

<jsp:forward page="welcome.jsp">
  <jsp:param name="user" value="Khách"/>
</jsp:forward>
</body>
</html>
