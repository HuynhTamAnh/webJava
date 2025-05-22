<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/22/2025
  Time: 10:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><%= request.getAttribute("pageTitle") != null ? request.getAttribute("pageTitle") : "Trang web" %></title>
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

    .page-title {
      text-align: center;
      font-size: 32px;
      font-weight: bold;
      margin: 20px 0 30px 0;
      color: #333;
    }

    .page-content {
      line-height: 1.6;
      color: #555;
    }

    .page-content h3 {
      color: #2E86AB;
      margin-top: 25px;
    }

    .page-content ul {
      padding-left: 20px;
    }

    .page-content li {
      margin-bottom: 8px;
    }
  </style>
</head>
<body>
<!-- Include Header -->
<jsp:include page="header.jsp" />

<!-- Main Content -->
<div class="main-content">
  <% if (request.getAttribute("pageTitle") != null) { %>
  <h1 class="page-title"><%= request.getAttribute("pageTitle") %></h1>
  <% } %>

  <div class="page-content">
    <% if (request.getAttribute("pageContent") != null) { %>
    <%= request.getAttribute("pageContent") %>
    <% } else { %>
    <p>Nội dung trang đang được cập nhật...</p>
    <% } %>
  </div>
</div>
</body>
</html>