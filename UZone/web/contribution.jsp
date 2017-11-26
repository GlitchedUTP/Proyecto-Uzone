<%--
  Created by IntelliJ IDEA.
  User: Jorda01
  Date: 25/11/2017
  Time: 1:42
  To change this template use File | Settings | File Templates.
--%>
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
    <title>Contributions</title>
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
            <s:a class="navbar-brand" href="main.jsp">UZone</s:a>
        </div>


        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="contribution.jsp">Mis Aportaciones</a></li>
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


<s:iterator value="posts">
    <div class="container">
        <div class="container">
            <s:url action="profile" var="profileLink"><s:param name="model.username"><s:property value="user.username"/></s:param></s:url>
            <p class="navbar-text">Publicado por <a href="${profileLink}"><s:property value="user.username"/></a> en <s:property value="date"/></p>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h4><s:property value="title"/></h4>
                    <p>
                        <s:property value="description"/>
                    </p>
                </div>
                <div class="col-md-8">
                    <div class="vid">
                        <iframe width="560" height="315" src="<s:property value='url'/>" allowfullscreen=""></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
</s:iterator>

</body>
</html>


