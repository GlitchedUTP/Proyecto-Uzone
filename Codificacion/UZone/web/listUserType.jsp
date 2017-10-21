<%--
  Created by IntelliJ IDEA.
  User: Nicolas
  Date: 10/20/2017
  Time: 2:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List of UserTypes</title>
</head>
<body>
    <h1>UserType List</h1>
    <table>
        <tr>
            <th>Id</th>
            <th>Name</th>
        </tr>
        <c:forEach var="userType" items="${userTypes}">
            <tr>
                <td><c:out value="${userType.getId()}"/></td>
                <td><c:out value="${userType.getName()}"/></td>
            </tr>
        </c:forEach>
    </table>
<<<<<<< HEAD:Codificacion/UZone/web/listUserType.jsp
=======


>>>>>>> cecde3f3b61b21c71d4e7f438cccea751d89ecf1:Codificacion/UZone/web/test.jsp
</body>
</html>
