<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>UZone</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <sb:head/>
  </head>
  <body>
  <nav class="navbar navbar-inverse">
      <div class="container-fluid">
          <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                  <span class="sr-only">Toggle navigation</span>
                  <%--<span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>--%>
              </button>
              <a class="navbar-brand" href="#">UZone</a>
          </div>
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <%--<ul class="nav navbar-nav">
                  <li><a href="#">Inicio</a></li>
                  <li><a href="#">Aportaciones</a></li>
                  <li><a href="#">Mensajes</a></li>
              </ul>--%>
              <div class="navbar-right">
                  <s:form theme="simple" action="loginaction">
                      <s:textfield id="username" name="model.username" placeholder="Username"/>
                      <s:password id="password" name="model.password" placeholder="Password"/>
                      <s:submit value="Iniciar Sesion" cssClass="btn btn-login"/>
                      <a href="userRegister.jsp"><s:label cssClass="btn btn-primary" value="Registrarse"/></a>
                      <a href="#">Olvido su contraseña</a>
                  </s:form>
              </div>
          </div>
      </div>
  </nav>
</body>
</html>
