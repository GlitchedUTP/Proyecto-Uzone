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
  <div class="container">
      <div class="row">
          <h3>
              Buscar Video
          </h3>
          <form class="navbar-form navbar-left">
              <div class="form-group">
                  <input type="text" class="form-control" placeholder="Buscar">
              </div>
              <button type="submit" class="btn btn-default">Enviar</button>
          </form>




          <hr>
      </div>
  </div>


  <div class="container">
      <div class="row">
          <h1>Videos Recomendados</h1>

      </div>
      <div class="row">
          <div class="col-md-5 col-lg-5">
              <!-- artigo em destaque -->
              <div class="featured-article">
                  <a href="#">
                      <div class="embed-responsive embed-responsive-16by9">
                          <iframe class="embed-responsive-item" src="//www.youtube.com/embed/zpOULjyy-n8?rel=0"></iframe>
                      </div>
                  </a>
                  <div class="block-title">
                      <h2>Publicado por:</h2>
                      <p class="by-author"><small>Usuario</small></p>
                  </div>
              </div>
              <!-- /.featured-article -->
          </div>
          <div class="col-md-7 col-lg-7">
              <ul class="media-list main-list">
                  <li class="media">
                      <a class="pull-left" href="#">
                          <img class="media-object" src="http://placehold.it/150x90" alt="...">
                      </a>
                      <div class="media-body">
                          <h4 class="media-heading">Lorem ipsum dolor asit amet</h4>
                          <p class="by-author">By Jhon Doe</p>
                      </div>
                  </li>
                  <li class="media">
                      <a class="pull-left" href="#">
                          <img class="media-object" src="http://placehold.it/150x90" alt="...">
                      </a>
                      <div class="media-body">
                          <h4 class="media-heading">Lorem ipsum dolor asit amet</h4>
                          <p class="by-author">By Jhon Doe</p>
                      </div>
                  </li>
                  <li class="media">
                      <a class="pull-left" href="#">
                          <img class="media-object" src="http://placehold.it/150x90" alt="...">
                      </a>
                      <div class="media-body">
                          <h4 class="media-heading">Lorem ipsum dolor asit amet</h4>
                          <p class="by-author">By Jhon Doe</p>
                      </div>
                  </li>
              </ul>
          </div>
      </div>
      <footer class="footer-bs">
          <div class="row">
              <div class="col-md-3 footer-brand animated fadeInLeft">
                  <h2>Uzone</h2>
                  <p></p>
                  <p>© 2017 Todos los derechos reservados</p>
              </div>
              <div class="col-md-4 footer-nav animated fadeInUp">
                  <h4>Menu —</h4>
                  <div class="col-md-6">
                      <ul class="pages">
                          <li><a href="#">Acerca de Uzone</a></li>
                          <li><a href="#">Terminos de Uso</a></li>
                          <li><a href="#">Política de privacidad</a></li>
                          <li><a href="#">Feedback</a></li>

                      </ul>
                  </div>
                  <div class="col-md-6">
                      <ul class="list">
                          <li><a href="#">Facebook</a></li>
                          <li><a href="#">Contáctanos</a></li>
                      </ul>
                  </div>
              </div>


          </div>
      </footer>
      <style>
          .footer-bs {
              background-color: #000000;
              padding: 60px 40px;
              color: rgba(255,255,255,1.00);
              margin-bottom: 20px;
              border-bottom-right-radius: 6px;
              border-top-left-radius: 0px;
              border-bottom-left-radius: 6px;
          }
          .footer-bs .footer-brand, .footer-bs .footer-nav, .footer-bs .footer-social, .footer-bs .footer-ns { padding:10px 25px; }
          .footer-bs .footer-nav, .footer-bs .footer-social, .footer-bs .footer-ns { border-color: transparent; }
          .footer-bs .footer-brand h2 { margin:0px 0px 10px; }
          .footer-bs .footer-brand p { font-size:12px; color:rgba(255,255,255,0.70); }

          .footer-bs .footer-nav ul.pages { list-style:none; padding:0px; }
          .footer-bs .footer-nav ul.pages li { padding:5px 0px;}
          .footer-bs .footer-nav ul.pages a { color:rgba(255,255,255,1.00); font-weight:bold; text-transform:uppercase; }
          .footer-bs .footer-nav ul.pages a:hover { color:rgba(255,255,255,0.80); text-decoration:none; }
          .footer-bs .footer-nav h4 {
              font-size: 11px;
              text-transform: uppercase;
              letter-spacing: 3px;
              margin-bottom:10px;
          }

          .footer-bs .footer-nav ul.list { list-style:none; padding:0px; }
          .footer-bs .footer-nav ul.list li { padding:5px 0px;}
          .footer-bs .footer-nav ul.list a { color:rgba(255,255,255,0.80); }
          .footer-bs .footer-nav ul.list a:hover { color:rgba(255,255,255,0.60); text-decoration:none; }

          .footer-bs .footer-social ul { list-style:none; padding:0px; }
          .footer-bs .footer-social h4 {
              font-size: 11px;
              text-transform: uppercase;
              letter-spacing: 3px;
          }
          .footer-bs .footer-social li { padding:5px 4px;}
          .footer-bs .footer-social a { color:rgba(255,255,255,1.00);}
          .footer-bs .footer-social a:hover { color:rgba(255,255,255,0.80); text-decoration:none; }

          .footer-bs .footer-ns h4 {
              font-size: 11px;
              text-transform: uppercase;
              letter-spacing: 3px;
              margin-bottom:10px;
          }
          .footer-bs .footer-ns p { font-size:12px; color:rgba(255,255,255,0.70); }

          @media (min-width: 768px) {
              .footer-bs .footer-nav, .footer-bs .footer-social, .footer-bs .footer-ns { border-left:solid 1px rgba(255,255,255,0.10); }
          }
      </style>
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
