<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

  <head>
    <title>UZone</title>
    <sb:head/>
  </head>
  <body>

  <s:form action="register" theme="bootstrap">
      <s:submit value="Registrarse" cssClass="btn btn-danger"/>
  </s:form>
  <s:form action="login" theme="bootstrap">
      <s:submit value="Iniciar sesion" cssClass="btn btn-login"/>
  </s:form>
  </body>
</html>
