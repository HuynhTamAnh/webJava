<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/20/2025
  Time: 9:36 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="bt6.Product" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>Quản Lý Sản Phẩm</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .container {
            width: 800px;
            margin: 0 auto;
        }
        h1 {
            color: #333;
        }
        form {
            margin-bottom: 20px;
        }
        label {
            display: inline-block;
            width: 100px;
            margin-bottom: 10px;
        }
        input[type="text"], input[type="number"] {
            width: 250px;
            padding: 5px;
            margin-bottom: 10px;
        }
        button {
            padding: 8px 15px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Quản Lý Sản Phẩm</h1>

    <h2>Thêm Sản Phẩm</h2>
    <form action="<%=request.getContextPath()%>/productServlet" method="post">
        <div>
            <label>ID:</label>
            <input type="text" name="id" required>
        </div>
        <div>
            <label>Tên sản phẩm:</label>
            <input type="text" name="productName" required>
        </div>
        <div>
            <label>Giá:</label>
            <input type="number" name="price" step="0.01" required>
        </div>
        <div>
            <label>Mô tả:</label>
            <input type="text" name="description">
        </div>
        <div>
            <label>Số lượng:</label>
            <input type="number" name="stock" required>
        </div>
        <div>
            <label>Trạng thái:</label>
            <input type="text" name="status" required>
        </div>
        <button type="submit">Thêm sản phẩm</button>
    </form>

    <h2>Danh sách sản phẩm đã thêm:</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Tên sản phẩm</th>
            <th>Giá</th>
            <th>Mô tả</th>
            <th>Số lượng</th>
            <th>Trạng thái</th>
        </tr>
        <%
            ArrayList<Product> productList = (ArrayList<Product>) application.getAttribute("productList");
            if (productList != null && !productList.isEmpty()) {
                for (Product product : productList) {
        %>
        <tr>
            <td><%= product.getId() %></td>
            <td><%= product.getProductName() %></td>
            <td><%= product.getPrice() %></td>
            <td><%= product.getDescription() %></td>
            <td><%= product.getStock() %></td>
            <td><%= product.getStatus() %></td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="6">Chưa có sản phẩm nào.</td>
        </tr>
        <% } %>
    </table>
</div>
</body>
</html>
