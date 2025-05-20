<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/20/2025
  Time: 9:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action=<%=request.getContextPath()%>/bt5" method="post">
    <div>
        <label>tên</label>
        <input type="text" name="name">
    </div>
    <div>
        <label>email</label>
        <input type="email" name="email">
    </div>
    <div>
        <label>password</label>
        <input type="password" name="password">
    </div>
</form>
<h1>thông tin người dùng vừa tạo</h1>
<ul>
    <li>ten: ${name}</li>
    <li>pass: ${pass}</li>
    <li>email: ${email}</li>
</ul>
</body>
</html>
