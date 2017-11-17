<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>UZone</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- <link rel='stylesheet' type='text/css' href='https://fonts.googleapis.com/css?family=Lato:400,100,300,700'> -->
    <link rel='stylesheet' type='text/css' href='https://afactys.com/resources/css/flat-ui.css?v=5.7'>
    <link rel='stylesheet' type='text/css' href='https://afactys.com/resources/css/afactys.css?v=5.7'>
    <link rel='stylesheet' type='text/css' href='https://afactys.com/resources/css/messenger.css'>
    <!-- <link rel='stylesheet' type='text/css' href='https://afactys.com/resources/css/pixelhint/animate.css'/> -->
    <link rel='stylesheet' type='text/css'
          href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.1/animate.min.css'/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="https://afactys.com/resources/css/pixelhint/owl.transitions.css"/>
    <link rel="stylesheet" type="text/css" href="https://afactys.com/resources/css/pixelhint/owl.carousel.css"/>
    <link rel="stylesheet" type="text/css" href="https://afactys.com/resources/css/pixelhint/main.css"/>
    <sb:head/>
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-
navbar-collapse-1" aria-expanded="false">
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
<section class="hero" id="hero">
    <div class="container">
        <div class="caption">
            <h3 class="text-uppercase">UZONE TE DA LA BIENVENIDA </h3>
            <p>
                Entrar en la comunidad de musicos, actores, pintores, escritores, bailarines...<br>

                Sigue a nuevos artistas y mira sus eventos y logros.<br>
                Promociona tu galeria, proyectos, obras y date a conocer en nuestra comunidad.<br>
                Publico eventos como worker y califica a tus artistas favoritos.<br>
                Porque UZone esta hecha para artistas como tu.
            </p>

            <a href="#" class="reg-btn">
                <i class="reg_icon fa fa-fw fa-sign-in"></i>&nbsp;
                <span>REGISTRATE</span>
            </a>
        </div>
    </div>
</section>
<section class="about visible-lg" id="about">
    <div class="container">
        <div class="row">
            <div class="col-md-6 text-center">
                <div class="iphone">
                    <img src="https://afactys.com/resources/img/pixelhint/iphone.png" width=339
                         height=617 title="También en tu smartphone" alt="También en tu smartphone">
                </div>
            </div>
            <div class="col-md-6">
                <div class="features_list">
                    <h2 class="text-uppercase">Tambien en todos tus dispositivos</h2>
                    <p>Puedes disfrutar estes donde estes de la herrramienta de trabajo y contacto
                        destinada a artistas y colectivos que quieran:</p>
                    <ul class="list-unstyled">
                        <li>
                            <i class="fa fa-fw fa-star"></i>&nbsp;
                            <span>Promocionar sus proyectos y eventos.</span>
                        </li>
                        <li>
                            <i class="fa fa-fw fa-bullhorn"></i>&nbsp;
                            <span>Adaptabilidad en todos tus dispositivos.</span>
                        </li>
                        <li>
                            <i class="fa fa-fw fa-users"></i>&nbsp;
                            <span>Establecer contacto con workers y artistas.</span>
                        </li>
                        <li>
                            <i class="fa fa-fw fa-newspaper-o"></i>&nbsp;
                            <span>Estar al dia de con la comunidad artistica.</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="about_video show_video">
        <a class="close_video pointer"><i class="fa fa-fw fa-2x fa-times grey"></i></a>
    </div>
</section>
<section class="app_features bg-primary" id="app_features">
    <div class="container">
        <div class="row text-center enlaces_index">
            <a class="col-sm-4" href="#">
                <div class="afactys-ico fa-3x" style="line-height:13px;margin-top:15px">C</div>
                <h2 class="text-uppercase">COMIENZA</h2>
                <p>Desarrolla tu trayectoria artistica participando en numerosos proyectos</p>
            </a>
            <a class="col-sm-4" href="#"><i class="fa fa-fw fa-2x fa-search"></i>
                <h2 class="text-uppercase">BUSCADOR</h2>
                <p>Encuentra las personas que se dedican al mundo del arte y la cultura.</p>
            </a>
            <a class="col-sm-4" href="#"><i class="fa fa-fw fa-2x fa-book"></i>
                <h2 class="text-uppercase">OPORTUNIDADES</h2>
                <p>Tablon informativo de difusiones y acontecimientos que te pueden interesar.</p> <!--
, seas de la disciplina que seas  -->
            </a>
            <a class="col-sm-4" href="#"><i class="fa fa-fw fa-2x fa-folder-open"></i>
                <h2 class="text-uppercase">PROYECTOS</h2>
                <p>Muestra y difunde todos tus trabajos artisticos para que te conozcan mejor</p>
            </a>
            <a class="col-sm-4" href="#"><i class="fa fa-fw fa-2x fa-star"></i>
                <h2 class="text-uppercase">EVENTOS</h2>
                <p>Sigue la actividad cultural que te rodea y atrevete a participar en eventos</p>
            </a>
            <a class="col-sm-4" href="#"><i class="fa fa-fw fa-2x fa-trophy"></i>
                <h2 class="text-uppercase">CONCURSOS</h2>
                <p>Disfruta del arte y la cultura mediante premios, sorteos y descuentos</p>
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
                        <iframe class="embed-responsive-item" src="//www.youtube.com/embed/zpOULjyy-n8?
rel=0"></iframe>
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
    <div class="clear footer separador_footer text-center">
        <div class="col-md-3 hidden-xs hidden-sm" style="padding-left:30px">
            <a style="margin-bottom:10px" class="navbar-brand" href="#">
                <img src="http://www.lilithstudio.net/home/wp-content/uploads/2013/07/104-350x196.jpeg" alt="Afactys logo"
                     width="210" height="125">
            </a>
        </div>
        <div class="col-md-9" style="padding-left:0">

            <div class="col-sm-8 no-pad">
                <div class="col-sm-4">
                    <ul class="list-unstyled">
                        <li class="titulof"><b>Descubre UZone</b><li>
                        <li><a rel="nofollow" href="#">Que es UZone?</a></li>
                        <li><a rel="nofollow" href="#">Como funciona?</a></li>
                        <li><a rel="nofollow" href="#">Noticias</a></li>
                        <li><a rel="nofollow" href="#">Changelog</a></li>
                    </ul>
                </div>
                <div class="col-sm-4">
                    <ul class="list-unstyled">
                        <li class="titulof"><b>Comparte Cultura</b><li>
                        <li><a rel="nofollow" href="#">Colaboradores</a></li>
                        <li><a rel="nofollow" href="#">Anunciate aqui</a></li>
                    </ul>
                </div>
                <div class="col-sm-4">
                    <ul class="list-unstyled">
                        <li class="titulof"><b>Ayuda</b><li>
                        <li><a rel="nofollow" href="#">Preguntas frecuentes</a></li>
                        <li><a rel="nofollow" href="#">Contacta con nosotros</a></li>
                        <li><a rel="nofollow" href="#">Condiciones de uso</a></li>
                        <li><a rel="nofollow" href="#">Politicas de privacidad</a></li>
                        <li><a rel="nofollow" href="#">Normas UZone</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-sm-4">
                <ul class="list-unstyled">
                    <li class="titulof"><b>Siguenos en:</b></li>
                    <li class="social_ligero">
                        <a rel="nofollow" href="#" target="_blank"><i class="fa fa-fw fa-facebook fa-3x pad-foot"></i></a>
                        <a rel="nofollow" href="#"><i class="fa fa-fw fa-twitter fa-3x pad-foot"></i></a>
                        <a rel="nofollow publisher" href="#"><i class="fa fa-fw fa-google-plus fa-3x pad-foot"></i></a>
                        <div>
                            <a rel="nofollow" href="#" target="_blank"><i class="fa fa-fw fa-youtube fa-3x pad-foot"></i></a>
                            <a rel="nofollow" href="#" target="_blank"><i class="fa fa-fw fa-instagram fa-3x pad-foot"></i></a>
                        </div>
                    </li>


                </ul>
            </div>
        </div>
        <div class="clear">
            <p class="muted" style="margin-top:20px"><b>&#169;</b> <small>2017</small> Uzone. Todos los derechos
                reservados.</p><br>

        </div>
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
            .footer-bs .footer-brand, .footer-bs .footer-nav, .footer-bs .footer-social, .footer-bs .footer-ns {
                padding:10px 25px; }
            .footer-bs .footer-nav, .footer-bs .footer-social, .footer-bs .footer-ns { border-color: transparent; }
            .footer-bs .footer-brand h2 { margin:0px 0px 10px; }
            .footer-bs .footer-brand p { font-size:12px; color:rgba(255,255,255,0.70); }

            .footer-bs .footer-nav ul.pages { list-style:none; padding:0px; }
            .footer-bs .footer-nav ul.pages li { padding:5px 0px;}
            .footer-bs .footer-nav ul.pages a { color:rgba(255,255,255,1.00); font-weight:bold; text-transform:uppercase;
            }
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
                .footer-bs .footer-nav, .footer-bs .footer-social, .footer-bs .footer-ns { border-left:solid 1px rgba
                (255,255,255,0.10); }
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

