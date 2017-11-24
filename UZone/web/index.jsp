<%--
  Created by IntelliJ IDEA.
  User: TORRES
  Date: 18/11/2017
  Time: 0:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>UZone La red social de artistas</title>
    <!-- Bootstrap core CSS -->
    <link href="Add-ons/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template -->
    <link href="Add-ons/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <!-- Plugin CSS -->
    <link href="Add-ons/vendor/magnific-popup/magnific-popup.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="Add-ons/css/creative.min.css" rel="stylesheet">

</head>

<body id="page-top">

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">UZone</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <div class="navbar-right">
                <s:form theme="simple" action="login">
                    <s:textfield id="username" name="model.username" placeholder="Nombre de usuario"/>
                    <s:password id="password" name="model.password" placeholder="Contraseña"/>
                    <s:submit value="Iniciar Sesion" cssClass="btn btn-outline-secondary"/>
                    <a href="userRegister.jsp"><s:label cssClass="btn btn-outline-secondary" value="Registrarse"/></a>
                    <a href="#">¿Olvido su contraseña?</a>
                </s:form>
            </div>
        </div>
    </div>
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Demo</button>
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">New message</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">Recipient:</label>
                            <input type="text" class="form-control" id="recipient-name">
                        </div>
                        <div class="form-group">
                            <label for="message-text" class="col-form-label">Message:</label>
                            <textarea class="form-control" id="message-text"></textarea>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Send message</button>
                </div>
            </div>
        </div>
    </div>
</nav>

<header class="masthead text-center text-white d-flex">
    <div class="container my-auto">
        <div class="row">
            <div class="col-lg-10 mx-auto">
                <h1 class="text-uppercase">
                    <strong>UZone te da la bienvenida</strong>
                </h1>
                <hr>
            </div>
            <div class="col-lg-8 mx-auto">
                <p class="text-faded mb-5">
                    Entrar en la comunidad de musicos, actores, pintores, escritores, bailarines...
                    Sigue a nuevos artistas y mira sus eventos y logros.
                    Promociona tu galeria, proyectos, obras y date a conocer en nuestra comunidad.
                    Publica eventos como worker y califica a tus artistas favoritos.
                    Porque UZone esta hecha para artistas como tu.
                </p>
                <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Registrate Ahora</a>
            </div>
        </div>
    </div>
</header>

<section class="bg-primary" id="about">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 mx-auto text-center">
                <h2 class="section-heading text-white"></h2>
                <hr class="light my-4">
                <p class="text-faded mb-4"></p>
                <a class="btn btn-light btn-xl js-scroll-trigger" href="#services"></a>
            </div>
        </div>
    </div>
</section>

<section id="services">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading">Tambien en todos tus dispositivos</h2>
                <hr class="my-4">
                <img  src="Add-ons/img/iphone.png" alt="">
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 text-center">
                <div class="service-box mt-5 mx-auto">
                    <i class="fa fa-4x fa-diamond text-primary mb-3 sr-icons"></i>
                    <h3 class="mb-3"></h3>
                    <p class="text-muted mb-0">Adaptabilidad en todos tus dispositivos.</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 text-center">
                <div class="service-box mt-5 mx-auto">
                    <i class="fa fa-4x fa-paper-plane text-primary mb-3 sr-icons"></i>
                    <h3 class="mb-3"></h3>
                    <p class="text-muted mb-0">Promocionar sus proyectos y eventos.</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 text-center">
                <div class="service-box mt-5 mx-auto">
                    <i class="fa fa-4x fa-newspaper-o text-primary mb-3 sr-icons"></i>
                    <h3 class="mb-3"></h3>
                    <p class="text-muted mb-0">Establecer contacto con workers y artistas.</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 text-center">
                <div class="service-box mt-5 mx-auto">
                    <i class="fa fa-4x fa-heart text-primary mb-3 sr-icons"></i>
                    <h3 class="mb-3"></h3>
                    <p class="text-muted mb-0">Estar al dia de con la comunidad artistica.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="p-0" id="portfolio">
    <div class="container-fluid p-0">
        <div class="row no-gutters popup-gallery">
            <div class="col-lg-4 col-sm-6">
                <a class="portfolio-box" href="Add-ons/img/1.jpg">
                    <img class="img-fluid" src="Add-ons/img/1.jpg" alt="">
                    <div class="portfolio-box-caption">
                        <div class="portfolio-box-caption-content">
                            <div class="project-category text-faded">
                                COMIENZA
                            </div>
                            <div class="project-name">
                                Desarrolla tu trayectoria artistica participando en numerosos proyectos
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6">
                <a class="portfolio-box" href="Add-ons/img/2.jpg">
                  <img class="img-fluid" src="Add-ons/img/2.jpg" alt="">
                  <div class="portfolio-box-caption">
                      <div class="portfolio-box-caption-content">
                          <div class="project-category text-faded">
                              BUSCA
                          </div>
                          <div class="project-name">
                              Encuentra a las personas que se dedican al mundo del arte y la cultura
                          </div>
                      </div>
                  </div>
              </a>
          </div>
          <div class="col-lg-4 col-sm-6">
              <a class="portfolio-box" href="Add-ons/img/4.jpg">
                  <img class="img-fluid" src="Add-ons/img/4.jpg" alt="">
                  <div class="portfolio-box-caption">
                      <div class="portfolio-box-caption-content">
                          <div class="project-category text-faded">
                              OPORTUNIDADES
                          </div>
                          <div class="project-name">
                              Tablon informativo de difusiones y acontecimientos que te pueden interesar
                          </div>
                      </div>
                  </div>
              </a>
          </div>
          <div class="col-lg-4 col-sm-6">
              <a class="portfolio-box" href="Add-ons/img/3.jpg">
                  <img class="img-fluid" src="Add-ons/img/3.jpg" alt="">
                  <div class="portfolio-box-caption">
                      <div class="portfolio-box-caption-content">
                          <div class="project-category text-faded">
                              PROYECTOS
                          </div>
                          <div class="project-name">
                              Muestra y difunde todos tus trabajos artisticos para que te conozcan mejor
                          </div>
                      </div>
                  </div>
              </a>
          </div>
          <div class="col-lg-4 col-sm-6">
              <a class="portfolio-box" href="Add-ons/img/6.jpg">
                  <img class="img-fluid" src="Add-ons/img/6.jpg" alt="">
                  <div class="portfolio-box-caption">
                      <div class="portfolio-box-caption-content">
                          <div class="project-category text-faded">
                              EVENTOS
                          </div>
                          <div class="project-name">
                              Sigue la actividad cultural que te rodea y atrevete a participar en eventos
                          </div>
                      </div>
                  </div>
              </a>
          </div>
          <div class="col-lg-4 col-sm-6">
              <a class="portfolio-box" href="Add-ons/img/5.jpg">
                  <img class="img-fluid" src="Add-ons/img/5.jpg" alt="">
                  <div class="portfolio-box-caption">
                      <div class="portfolio-box-caption-content">
                          <div class="project-category text-faded">
                              CONCURSOS
                          </div>
                          <div class="project-name">
                              Disfruta del arte y la cultura mediante premios,sorteos y reconocimientos
                          </div>
                      </div>
                  </div>
              </a>
          </div>
      </div>
  </div>
</section>

<section id="contact">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 mx-auto text-center">
                <h2 class="section-heading"></h2>
                <hr class="my-4">
                <p class="mb-5"></p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 ml-auto text-center">
                <i class="fa fa-phone fa-3x mb-3 sr-contact"></i>
                <p></p>
            </div>
            <div class="col-lg-4 mr-auto text-center">
                <i class="fa fa-envelope-o fa-3x mb-3 sr-contact"></i>
                <p>
                    <a href="mailto:your-email@your-domain.com"></a>
                </p>
            </div>
        </div>
    </div>
</section>

<!-- Bootstrap core JavaScript -->
<script src="Add-ons/vendor/jquery/jquery.min.js"></script>
<script src="Add-ons/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Plugin JavaScript -->
<script src="Add-ons/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="Add-ons/vendor/scrollreveal/scrollreveal.min.js"></script>
<script src="Add-ons/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

<!-- Custom scripts for this template -->
<script src="Add-ons/js/creative.min.js"></script>
</body>

</html>

