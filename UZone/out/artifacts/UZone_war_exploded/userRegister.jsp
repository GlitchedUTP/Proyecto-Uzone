<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registrar Usuario</title>
</head>
<body>
<h3>Te tomara solo un par de minutos registrarte</h3>

<s:form action="dataUser">
    <s:textfield id="email" name="email" placeholder="Correo Electronico"/> <!-- texfield para el correo , no hay labels -->
    <s:textfield id="Name" name="Name" placeholder="Nombres" />
    <s:textfield id="LastName" name="Lastname" placeholder="Apellidos" />
    <s:textfield id="Username" name="Username" placeholder="Nombre de Usuario" />
    <s:textfield id="Password" name="Password" placeholder="Contraseña" type="password"/>
    <s:label for="Birthdate" value="Fecha de Nacimiento"/>
    <s:date name="Birthdate"/>
    <s:label value="Selecciona tu genero"/>
    <s:select   headerKey="-1" headerValue="--- Select ---"
                list="#{'M':'Masculino', 'F':'Femenino'}"
                name="genre" />
    <s:label for="UserType" value="¿Eres artista o Worker?"/>
    <s:select   headerKey="-1" headerValue="--- Select ---"
                list="#{'1':'Artista', '2':'Dueño de un local'}"
                name="usertype" />
    <div> Al registrarte aceptas nuestras Condiciones y nuestra Política de privacidad</div>
    <s:submit value="Registrarse"/>
</s:form>
</body>
</html>