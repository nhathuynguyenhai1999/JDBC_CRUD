<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 22/03/2024
  Time: 10:36 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Management</title>
</head>
<body>
<h1>User Management</h1>
<form action="UserServlet" method="GET">
    <label for="searchCountry">Search by Country:</label>
    <input type="text" id="searchCountry" name="country">
    <input type="submit" value="Search">
</form>

<form action="UserServlet" method="GET">
    <input type="hidden" name="sortBy" value="name">
    <input type="submit" value="Sort by Name">
</form>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Country</th>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.country}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>


