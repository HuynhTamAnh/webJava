<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/22/2025
  Time: 10:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Bài tập 1 - Hello World</title>
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

    .welcome-message {
      text-align: center;
      font-size: 48px;
      font-weight: bold;
      margin: 40px 0;
      color: #333;
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
  </style>
</head>
<body>
<!-- Include Header -->
<jsp:include page="header.jsp" />

<!-- Main Content -->
<div class="main-content">
  <div class="welcome-message">Hello World!</div>

  <div class="page-nav">
    <a href="MainServlet?exercise=1" class="current-page">Bài tập 1</a>
    <span class="separator">|</span>
    <a href="MainServlet?exercise=2">Bài tập 2</a>
  </div>

  <div style="text-align: center; margin: 30px 0; padding: 20px; background-color: #f9f9f9; border-radius: 8px;">
    <h3>Mô tả:</h3>
    <p>Trang này được tạo từ <strong>main.jsp</strong> và sử dụng <strong>&lt;jsp:include&gt;</strong> để chèn nội dung từ <strong>header.jsp</strong></p>
    <p>Header chứa menu điều hướng và được sử dụng chung cho toàn bộ ứng dụng.</p>
  </div>
</div>
</body>
</html>