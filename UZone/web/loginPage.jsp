<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: TORRES
  Date: 10/11/2017
  Time: 1:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="loginaction" method="post">
        <br/><input type="text" name="username" placeholder="Ingresa tu usuario"/><br/>
        <br/><input type="password" name="password" placeholder="Ingresa tu contraseña"/><br/>
        <input type="submit" value="Iniciar sesion"/>
    </form>
</body>
</html>
