<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/22/2025
  Time: 10:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Bài tập 2 - Đăng Nhập</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f5f5f5;
    }

    .main-content {
      max-width: 800px;
      margin: 0 auto;
      padding: 20px;
      background-color: white;
      border-radius: 8px;
      box-shadow: 0 2px 10px rgba(0,0,0,0.1);
    }

    .page-nav {
      text-align: center;
      margin: 30px 0;
    }

    .page-nav a {
      color: #2E86AB;
      text-decoration: underline;
      margin: 0 5px;
      font-size: 16px;
    }

    .page-nav a:hover {
      color: #1a5f7a;
    }

    .page-nav .separator {
      margin: 0 5px;
      color: #666;
    }

    .current-page {
      font-weight: bold;
      color: #333 !important;
    }

    .login-form {
      max-width: 400px;
      margin: 40px auto;
      padding: 30px;
      border: 2px solid #333;
      border-radius: 8px;
      background-color: #fff;
    }

    .login-form h2 {
      text-align: center;
      margin-bottom: 25px;
      font-size: 24px;
      color: #333;
    }

    .form-group {
      margin-bottom: 20px;
    }

    .form-group label {
      display: inline-block;
      width: 100px;
      font-weight: bold;
      color: #333;
    }

    .form-group input[type="text"],
    .form-group input[type="password"] {
      width: 200px;
      padding: 8px;
      border: 1px solid #ccc;
      border-radius: 4px;
      font-size: 14px;
    }

    .login-btn {
      text-align: center;
      margin-top: 25px;
    }

    .login-btn button {
      padding: 10px 20px;
      background-color: #f0f0f0;
      border: 1px solid #ccc;
      border-radius: 4px;
      cursor: pointer;
      font-size: 14px;
    }

    .login-btn button:hover {
      background-color: #e0e0e0;
    }

    .reference-image {
      text-align: center;
      margin: 20px 0;
      padding: 20px;
      background-color: #f9f9f9;
      border-radius: 8px;
    }

    .reference-image h3 {
      color: #666;
      margin-bottom: 10px;
    }
  </style>
</head>
<body>
<!-- Include Header -->
<jsp:include page="header.jsp" />

<!-- Main Content -->
<div class="main-content">
  <div class="page-nav">
    <a href="MainServlet?exercise=1">Bài tập 1</a>
    <span class="separator">|</span>
    <a href="MainServlet?exercise=2" class="current-page">Bài tập 2</a>
  </div>

  <div class="login-form">
    <h2>Đăng Nhập</h2>
    <form action="LoginServlet" method="post">
      <div class="form-group">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>
      </div>
      <div class="form-group">
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
      </div>
      <div class="login-btn">
        <button type="submit">Đăng Nhập</button>
      </div>
    </form>
  </div>

  <div class="reference-image">
    <h3>Hình ảnh tham khảo</h3>
    <p>Form đăng nhập với các trường Username và Password, sử dụng cùng header navigation.</p>
    <% if (request.getAttribute("message") != null) { %>
    <div style="color: red; margin-top: 15px;">
      <%= request.getAttribute("message") %>
    </div>
    <% } %>
  </div>
</div>
</body>
</html>