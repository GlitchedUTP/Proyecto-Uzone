<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registrate!</title>
</head>
<body>
<h3>Te tomara solo un par de minutos registrarte</h3>

<s:form action="dataUser">
    <s:textfield id="Username" name="Username" label="Nombre de Usuario" placeholder="e.g. Usuario123456" />
    <s:password id="Password" name="Password" label="Contraseña" placeholder="e.g. 12345"/>
    <s:password id="Password2" label="Repita su contraseña" placeholder="e.g. 12345"/>
    <s:textfield id="email" name="email" label="Correo Electronico" placeholder="e.g. usuario@gmail.com"/>
    <s:textfield id="Name" name="Name" label="Nombre" placeholder="e.g. Cristian Nicolas" />
    <s:textfield id="LastName" name="Lastname" label="Apellido" placeholder="e.g. Cordova Puglianini" />
    <s:textfield label="Fecha de Nacimiento" type="date"/>
    <s:select   label="Selecciona tu genero" headerKey="-1" headerValue="--- Select ---"
                list="#{'M':'Masculino', 'F':'Femenino'}"
                name="genre" />
    <s:select   label="¿Eres Artista o Dueño de un local?" headerKey="-1" headerValue="--- Select ---"
                list="#{'1':'Artista', '2':'Dueño de un local'}"
                name="usertype" />
    <s:submit value="Registrarse"/>
</s:form>
<div> *Al registrarte aceptas nuestras Condiciones y nuestra Política de privacidad</div>
</body>
</html>