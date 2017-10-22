<%--
  Created by IntelliJ IDEA.
  User: Nicolas
  Date: 10/21/2017
  Time: 5:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List of Users</title>
</head>
<body>
    <h1>User List</h1>
    <table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Profile</th>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td><c:out value="${user.getId()}"/></td>
            <td><c:out value="${user.getUsername()}"/></td>
            <td><a href="users?action=goToUser&id=${user.getId()}">Show</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
