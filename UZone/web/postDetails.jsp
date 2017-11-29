<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="Add-ons/vendor/bootstrap/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href="Add-ons/vendor/magnific-popup/magnific-popup.css" rel="stylesheet">
<link href="Add-ons/css/creative.min.css" rel="stylesheet">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main</title>
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
            <s:a class="navbar-brand" href="home">UZone</s:a>
        </div>


        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="main.jsp">Inicio</a></li>
                <li><s:a href="contribution">Mis Aportaciones</s:a></li>
            </ul>
            <form class="navbar-form navbar-left">


            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><s:a href="self">${sessionScope.username}</s:a></li>
                <li><s:a href="logout">Cerrar sesión</s:a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <ul class="nav nav-pills">
        <li role="presentation" class="active"><a href="main.jsp">Últimos</a></li>
        <li role="presentation"><a href="#">Màs Videos</a></li>
        <s:if test="#session.userType==1"><li role="presentation"><s:a href="redirectCreatePost">Enviar Video</s:a></li></s:if>
        <li role="presentation"><a href="#">Más Votados</a></li>
        <s:if test="#session.userType==2"><li role="presentation"><s:a href="redirectCreateEvent">Crea un evento</s:a></li></s:if>
        <li role="presentation"><a href="listEvents">Eventos disponibles</a></li>
        <s:form class="navbar-form navbar-left" action="searchVideo">
            <div class="form-group">
                <s:textfield name="model.title"  class="form-control" placeholder="Buscar" value=""/>
            </div>
            <s:submit type="submit" class="btn btn-default" value="Buscar"/>
        </s:form>
    </ul>
</div>
<center>
        <div class="container">
            <div class="container">
                <s:url action="profile" var="profileLink"><s:param name="username"><s:property value="model.user.username"/></s:param></s:url>
                <p class="navbar-text">Publicado por <a href="${profileLink}"><s:property value="model.user.username"/></a> en <s:property value="model.date"/></p>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <s:url action="postDetails" var="showPostDetails"><s:param name="postId"><s:property value="id"/></s:param></s:url>
                        <a href="${showPostDetails}"><h4><s:property value="title"/></h4></a>
                        <p>
                            <s:property value="model.description"/>
                        </p>
                    </div>
                    <div class="col-md-8">
                        <div class="vid">
                            <iframe width="560" height="315" src="<s:property value='model.url'/>" allowfullscreen=""></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</center>
<h3>Comentarios:</h3>
<s:form  theme="simple" cssClass="well" action="createComment">
    <s:hidden name="postId" value="%{model.id}"/>
    <s:textarea name="description" placeholder="Deja tu comentario"/>
    <s:submit value="Enviar Commentario"/>
</s:form>
<s:iterator value="comments">
    <div class="container">
        <table>
            <tr>
                <td><h4>Comentario hecho por <s:property value="user.username"/> en <s:property value="date"/>:</h4></td>
            </tr>
            <tr>
                <td><s:property value="description"/></td>
                <hr>
            </tr>
        </table>
    </div>
</s:iterator>

<script src="Add-ons/vendor/jquery/jquery.min.js"></script>
<script src="Add-ons/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Plugin JavaScript -->
<script src="Add-ons/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="Add-ons/vendor/scrollreveal/scrollreveal.min.js"></script>
<script src="Add-ons/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

<!-- Custom scripts for this template -->
<script src="Add-ons/js/creative.min.js"></script>
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