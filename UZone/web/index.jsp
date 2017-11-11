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
                  <s:form theme="simple" action="login">
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
  <div class="container">
      <div id="myCarousel" class="carousel slide" data-ride="carousel">


          <div class="carousel-inner">

              <div class="item active">
                  <img src="http://placehold.it/1200x400/cccccc/ffffff">
                  <div class="carousel-caption">
                      <h3>Usuario 1</h3>
                      <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. <a href="" target="_blank" class="label label-danger">Ver Perfil</a></p>
                  </div>
              </div>

              <div class="item">
                  <img src="http://placehold.it/1200x400/999999/cccccc">
                  <div class="carousel-caption">
                      <h3>Usuario 2</h3>
                      <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. <a href="" target="_blank" class="label label-danger">Ver Perfil</a></p>
                  </div>
              </div>

              <div class="item">
                  <img src="http://placehold.it/1200x400/dddddd/333333">
                  <div class="carousel-caption">
                      <h3>Usuario 3</h3>
                      <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. <a href="" target="_blank" class="label label-danger">Ver Perfil</a></p>
                  </div>
              </div>

              <div class="item">
                  <img src="http://placehold.it/1200x400/999999/cccccc">
                  <div class="carousel-caption">
                      <h3>Headline</h3>
                      <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>
                  </div>
              </div>

          </div>


          <ul class="nav nav-pills nav-justified">
              <li data-target="#myCarousel" data-slide-to="0" class="active"><a href="#">About<small>Lorem ipsum dolor sit</small></a></li>
              <li data-target="#myCarousel" data-slide-to="1"><a href="#">Projects<small>Lorem ipsum dolor sit</small></a></li>
              <li data-target="#myCarousel" data-slide-to="2"><a href="#">Portfolio<small>Lorem ipsum dolor sit</small></a></li>
              <li data-target="#myCarousel" data-slide-to="3"><a href="#">Services<small>Lorem ipsum dolor sit</small></a></li>
          </ul>


      </div>
  </div>
</body>
</html>
