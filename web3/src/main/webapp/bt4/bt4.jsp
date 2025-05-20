<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/20/2025
  Time: 8:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Máy Tính Cộng</title>
</head>
<body>
<%
    int tong = 0;
    String soThuNhatParam = request.getParameter("soThuNhat");
    String soThuHaiParam = request.getParameter("soThuHai");
    if (soThuNhatParam != null && !soThuNhatParam.isEmpty() && soThuHaiParam != null && !soThuHaiParam.isEmpty()) {
        int soThuNhat = Integer.parseInt(soThuNhatParam);
        int soThuHai = Integer.parseInt(soThuHaiParam);
        tong = soThuNhat + soThuHai;
    }
%>
<div>
    <h3>Nhập 2 số</h3>
    <form method="get">
        <label>Nhập số thứ nhất</label>
        <input type="text" name="soThuNhat">
        <label>Nhập số thứ hai</label>
        <input type="text" name="soThuHai">
        <button type="submit">Cộng</button>
    </form>
</div>
<h2>Tổng là: <%= tong %></h2>
</body>
</html>
