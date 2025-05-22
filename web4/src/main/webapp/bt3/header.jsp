<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/22/2025
  Time: 10:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  .header-nav {
    background-color: #2E86AB;
    padding: 15px 0;
    margin-bottom: 20px;
  }

  .nav-menu {
    list-style: none;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    gap: 40px;
  }

  .nav-menu a {
    color: white;
    text-decoration: none;
    font-size: 16px;
    font-weight: 500;
    padding: 10px 20px;
    border-radius: 5px;
    transition: background-color 0.3s;
  }

  .nav-menu a:hover {
    background-color: rgba(255, 255, 255, 0.1);
  }
</style>
<div class="header-nav">
  <ul class="nav-menu">
    <li><a href="MainServlet?page=home">Home</a></li>
    <li><a href="MainServlet?page=product">Product</a></li>
    <li><a href="MainServlet?page=about">About</a></li>
    <li><a href="MainServlet?page=contact">Contact</a></li>
  </ul>
</div>