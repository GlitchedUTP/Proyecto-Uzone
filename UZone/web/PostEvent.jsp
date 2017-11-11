
<%@ taglib prefix="s" uri="/struts-tags" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registrar Usuario</title>
</head>
<body>
<h2>Publica un Evento</h2>
<h3>Publica un evento para poder capturar la atencion de los mejores artistas</h3>
<s:form action="dataEvent">

    <s:label for="Namevideo" value="Nombre del video"/>
    <s:textfield id="namevideo" name="namevideo" >
    <s:label for="ubication" value="ubicacion"/>
    <s:textfield id="ubication" name="ubication"/>
    <s:label for="evntdate" value="Fecha/Hora Inicio"/>
    <s:date name="evntdate"/>   <s:textfield id="evntime" name="evntime" placeholder="Hora incio" />
    <s:label for="evntdatelimit" value="Fecha/Hora Finalizacion"/>
    <s:date name="evntdatelimit"/>   <s:textfield id="evntimelimit" name="evntimelimit" placeholder="Hora fin" />
    <s:label for="description" value="Descripcion"/>
    <s:textfield id="description" name="description"/>
    <s:label for="keywords" value="Palabras Clave"/>
    <s:textfield id="keywords" name="keywords"/>
    <s:label for="asociatedWebsites" value="asociatedWebsites"/>
    <s:textfield id="asociatedWebsites" name="asociatedWebsites"/>
    <s:submit value="Publicar"/>
</s:form>
</body>
</html>