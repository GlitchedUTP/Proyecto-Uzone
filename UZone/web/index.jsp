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
  <section class="section-white">
      <div class="container">

          <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
              <!-- Indicators -->
              <ol class="carousel-indicators">
                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                  <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                  <li data-target="#carousel-example-generic" data-slide-to="2"></li>
              </ol>

              <!-- Wrapper for slides -->
              <div class="carousel-inner">
                  <div class="item active">
                      <img src="http://placehold.it/800x400" alt="...">
                      <div class="carousel-caption">
                          <h2>Heading</h2>
                      </div>
                  </div>
                  <div class="item">
                      <img src="http://placehold.it/800x400" alt="...">
                      <div class="carousel-caption">
                          <h2>Heading</h2>
                      </div>
                  </div>
                  <div class="item">
                      <img src="http://placehold.it/800x400" alt="...">
                      <div class="carousel-caption">
                          <h2>Heading</h2>
                      </div>
                  </div>
              </div>

              <!-- Controls -->
              <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                  <span class="glyphicon glyphicon-chevron-left"></span>
              </a>
              <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                  <span class="glyphicon glyphicon-chevron-right"></span>
              </a>
          </div>

      </div>
  </section>
  </body>
<style>
    .img-responsive,
    .thumbnail > img,
    .thumbnail a > img,
    .carousel-inner > .item > img,
    .carousel-inner > .item > a > img {
    display: block;
    width: 100%;
    height: auto;
    }



    .carousel-inner {
    border-radius: 15px;
    }

    .carousel-caption {
    background-color: rgba(0,0,0,.5);
    position: absolute;
    left: 0;
    right: 0;
    bottom: 0;
    z-index: 10;
    padding: 0 0 10px 25px;
    color: #fff;
    text-align: left;
    }

    .carousel-indicators {
    position: absolute;
    bottom: 0;
    right: 0;
    left: 0;
    width: 100%;
    z-index: 15;
    margin: 0;
    padding: 0 25px 25px 0;
    text-align: right;
    }

    .carousel-control.left,
    .carousel-control.right {
    background-image: none;
    }




    .section-white {
    padding: 10px 0;
    }

    .section-white {
    background-color: #fff;
    color: #555;
    }

    @media screen and (min-width: 768px) {

    .section-white {
    padding: 1.5em 0;
    }

    }

    @media screen and (min-width: 992px) {

    .container {
    max-width: 930px;
    }

    }
</style>
</html>
