<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Compartir video</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="Add-ons/vendor/bootstrap/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <link href="Add-ons/vendor/magnific-popup/magnific-popup.css" rel="stylesheet">
    <link href="Add-ons/css/creative.min.css" rel="stylesheet">
</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">

        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">UZone</a>
        </div>


        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">

                <li><a href="main.jsp">Inicio</a></li>
                <li><a href="contribution.jsp">Aportaciones</a></li>
            </ul>
            <form class="navbar-form navbar-left">


            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><s:a href="#">${sessionScope.userName} <s:property value="model.username"/></s:a></li>
                <li><s:a href="logout">Cerrar sesión</s:a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <ul class="nav nav-pills">
        <li role="presentation" class="active"><a href="main.jsp">Últimos</a></li>
        <li role="presentation"><a href="main.jsp">Màs Videos</a></li>
        <s:if test="#session.userType==1"><li role="presentation"><a href="createPost.jsp">Enviar Video</a></li></s:if>
        <li role="presentation"><a href="#">Más Votados</a></li>
        <s:if test="#session.userType==2"><li role="presentation"><a href="createEvent.jsp">Crea un evento</a></li></s:if>
        <li role="presentation"><a href="listEvent.jsp">Eventos disponibles</a></li>
        <s:form class="navbar-form navbar-left" action="searchVideo">
            <div class="form-group">
                <s:textfield name="model.title"  class="form-control" placeholder="Buscar"/>
            </div>
            <s:submit type="submit" class="btn btn-default" value="Buscar"/>
        </s:form>
    </ul>
</div>

<div class="container">
    <h2>Envia un video</h2>
    <div>Haznos llegar todos aquellos vídeos que crees que pueden ser interesantes para publicar. </div>

    <div class="col-md-8">
        <s:form theme="bootstrap" role="form" action="createPost">
            <div class="form-group">
                <s:textfield id="title" name="model.title" placeholder="Ingresa el titulo de tu publicacion" class="form-control"/>
            </div>
            <div  class="form-group">
                <s:textfield id="url" name="model.url" placeholder="Ingresa la Url" cssClass="form-control"/>
            </div>
            <div>
                <s:textarea id="exampleFormControlTextarea1" name="model.description" placeholder="Describe tu video" cssClass="form-control" rows="3"/>
            </div  class="form-group">
            <s:submit value="Enviar" cssClass="btn btn-outline-primary"/>
        </s:form>
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
</body>
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
</html>
