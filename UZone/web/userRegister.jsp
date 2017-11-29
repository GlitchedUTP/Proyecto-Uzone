<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registrarte!</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <sb:head/>
    <link rel="stylesheet" href="Add-ons/vendor/bootstrap/css/bootstrap-superhero.css" type="text/css"/>
</head>
<body>

<div class="container">
    <s:form action="register" theme="bootstrap" label="Solo te tomara un par de minutos registrarte" cssClass="well form-vertical">
        <div class="col-md-8">
            <div class="form-group">
                <s:textfield id="username" name="model.username" label="Nombre de Usuario" placeholder="Ej. Usuario123456" />
            </div>
            <div class="form-group">
                <s:textfield id="password" name="model.password" label="Contraseña" placeholder="Ej. 12345" type="password"/>
            </div>
            <div class="form-group">
                <s:textfield id="password2" label="Repita su contraseña" placeholder="Ej. 12345" type="password"
                             onchange="this.setCustomValidity(this.value!=password.value ? 'Por favor ingrese la misma contraseña' : '');"/>
            </div>
            <div class="form-group">
                <s:textfield id="email" name="model.email" label="Correo Electronico" placeholder="Ej. usuario@gmail.com"/>
            </div>
            <div class="form-group">
                <s:textfield id="name" name="model.name" label="Nombre" placeholder="Ej. Cristian Nicolas" />
            </div>
            <div class="form-group">
                <s:textfield id="lastName" name="model.lastName" label="Apellido" placeholder="Ej. Cordova Puglianini" />
            </div>
            <div class="form-group">
                <s:textfield id="birthDate" name="model.birthDate" label="Fecha de Nacimiento" placeholder="Ej. 25-01-1999" type="textfield"/>
            </div>
            <div class="form-group">
                <s:select id="genre"
                          name="model.genre"
                          label="Selecciona tu genero"
                          headerKey="-1"
                          headerValue="--- Select ---"
                          list="#{'M':'Masculino', 'F':'Femenino'}"/>
            </div>
            <div class="form-group">
                <s:select id="userType"
                          name="model.userType.id"
                          label="¿Eres Artista o Dueño de un local?"
                          headerKey="-1"
                          headerValue="--- Select ---"
                          list="#{'1':'Artista', '2':'Dueño de un local'}"/>
            </div>
            <s:submit value="Registrarse" cssClass="btn btn-primary"/>
            <s:a href="index.jsp" cssClass="btn btn-primary">Iniciar sesion</s:a>
        </div>
        <h4> *Al registrarte aceptas nuestras Condiciones y nuestra Política de privacidad</h4>
    </s:form>
</div>
<style>
    body {
        background-size: cover;
        background: url(Add-ons/img/header.jpg) no-repeat fixed center center;
    }
</style>
</body>
</html>