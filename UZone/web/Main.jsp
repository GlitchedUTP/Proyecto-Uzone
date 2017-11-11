<%--
  Created by IntelliJ IDEA.
  User: Alex
  Date: 10/11/2017
  Time: 09:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main</title>
</head>
<body>
<nav class="navbar navbar-default">
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

                <li><a href="#">Inicio</a></li>
                <li><a href="#">Aportaciones</a></li>
                <li><a href="#">Mensajes</a></li>
            </ul>
            <form class="navbar-form navbar-left">


            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Bienvenido usuario</a></li>
                <li><a href="#">Preferencias</a></li>
                <li><a href="#">Mensaje</a></li>
                <li><a href="#">Cerrar sesión</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">

    <div class="panel panel-default">
        <div class="panel-heading">Video 1</div>
        <div class="panel-body">
            Publicado por Usuario el día d/m/a
            <div class="col-md-8">
                <div class="vid">
                    <iframe width="560" height="315" src="//www.youtube.com/embed/ac7KhViaVqc" allowfullscreen=""></iframe>
                </div>

            </div>
        </div>
    </div>



</div>
</body>
</html>
