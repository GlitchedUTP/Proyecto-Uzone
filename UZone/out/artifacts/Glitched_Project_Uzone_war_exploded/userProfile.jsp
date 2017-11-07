<%--
  Created by IntelliJ IDEA.
  User: Nicolas
  Date: 10/21/2017
  Time: 6:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Profile</title>
</head>
<body>
    <h2>Here's the profile</h2>
    <p>User id: <c:out value="${user.getId()}"/></p>
    <p>User username: <c:out value="${user.getUsername()}"/></p>
    <p>User password: <c:out value="${user.getPassword()}"/></p>
    <p>User name: <c:out value="${user.getName()}"/></p>
    <p>User lastname: <c:out value="${user.getLastName()}"/></p>
    <p>User email: <c:out value="${user.getEmail()}"/></p>
    <p>User birthdate: <c:out value="${user.getBirthDate()}"/></p>
    <p>User genre: <c:out value="${user.getGenre()}"/></p>
    <p>User phone: <c:out value="${user.getPhone()}"/></p>
    <p>User picture: <c:out value="${user.getPicture()}"/></p>
    <p>Usertype: <c:out value="${user.getUserType().getName()}"/></p>
</body>
</html>
