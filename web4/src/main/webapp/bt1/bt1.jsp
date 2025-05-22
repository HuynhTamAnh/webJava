<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/22/2025
  Time: 3:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hệ thống quản lý sản phẩm</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .container {
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.1);
            text-align: center;
            max-width: 500px;
            width: 90%;
        }

        .logo {
            font-size: 3em;
            margin-bottom: 20px;
            color: #667eea;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
            font-size: 2.2em;
        }

        .description {
            color: #666;
            margin-bottom: 30px;
            font-size: 1.1em;
            line-height: 1.6;
        }

        .features {
            background: #f8f9fa;
            padding: 20px;
            border-radius: 10px;
            margin: 30px 0;
            text-align: left;
        }

        .features h3 {
            color: #333;
            margin-bottom: 15px;
            text-align: center;
        }

        .features ul {
            list-style: none;
            padding: 0;
        }

        .features li {
            padding: 8px 0;
            border-bottom: 1px solid #eee;
            position: relative;
            padding-left: 20px;
        }

        .features li:before {
            content: "✓";
            color: #28a745;
            font-weight: bold;
            position: absolute;
            left: 0;
        }

        .features li:last-child {
            border-bottom: none;
        }

        .btn {
            display: inline-block;
            background: linear-gradient(45deg, #667eea, #764ba2);
            color: white;
            padding: 15px 30px;
            text-decoration: none;
            border-radius: 25px;
            font-size: 1.1em;
            font-weight: bold;
            transition: all 0.3s ease;
            border: none;
            cursor: pointer;
            margin: 10px;
        }

        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.2);
        }

        .btn-secondary {
            background: linear-gradient(45deg, #6c757d, #495057);
        }

        .footer {
            margin-top: 30px;
            color: #999;
            font-size: 0.9em;
        }

        .stats {
            display: flex;
            justify-content: space-around;
            margin: 20px 0;
        }

        .stat-item {
            text-align: center;
        }

        .stat-number {
            font-size: 2em;
            font-weight: bold;
            color: #667eea;
        }

        .stat-label {
            color: #666;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="logo">🛍️</div>

    <h1>Hệ thống quản lý sản phẩm</h1>

    <p class="description">
        Chào mừng bạn đến với hệ thống quản lý sản phẩm hiện đại.
        Quản lý danh mục sản phẩm của bạn một cách dễ dàng và hiệu quả.
    </p>

    <div class="stats">
        <div class="stat-item">
            <div class="stat-number">5</div>
            <div class="stat-label">Sản phẩm</div>
        </div>
        <div class="stat-item">
            <div class="stat-number">4</div>
            <div class="stat-label">Danh mục</div>
        </div>
        <div class="stat-item">
            <div class="stat-number">100%</div>
            <div class="stat-label">Độ tin cậy</div>
        </div>
    </div>

    <div class="features">
        <h3>Tính năng chính</h3>
        <ul>
            <li>Xem danh sách sản phẩm với giao diện thân thiện</li>
            <li>Thêm sản phẩm mới với thông tin chi tiết</li>
            <li>Chỉnh sửa thông tin sản phẩm hiện có</li>
            <li>Xóa sản phẩm không còn sử dụng</li>
            <li>Hỗ trợ tiếng Việt đầy đủ</li>
            <li>Giao diện responsive trên mọi thiết bị</li>
        </ul>
    </div>

    <div>
        <a href="ProductServlet" class="btn">
            🚀 Bắt đầu quản lý sản phẩm
        </a>
        <br>
        <a href="about.jsp" class="btn btn-secondary">
            📖 Tìm hiểu thêm
        </a>
    </div>

    <div class="footer">
        <p>© 2025 Product Management System v1.0</p>
        <p>Được phát triển với ❤️ bằng Java Servlet & JSP</p>
    </div>
</div>

<script>
    // Simple animation on page load
    window.addEventListener('load', function() {
        const container = document.querySelector('.container');
        container.style.opacity = '0';
        container.style.transform = 'translateY(20px)';

        setTimeout(() => {
            container.style.transition = 'all 0.6s ease';
            container.style.opacity = '1';
            container.style.transform = 'translateY(0)';
        }, 100);
    });
</script>
</body>
</html>