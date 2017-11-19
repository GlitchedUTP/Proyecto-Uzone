
<%@ taglib prefix="s" uri="/struts-tags" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registrar Usuario</title>
</head>
<body>
<h2>Publica un Evento</h2>
<h3>Publica un evento para poder capturar la atencion de los mejores artistas</h3>
<s:form action="dataEvent" theme="bootstrap">
    <s:textfield id="evntime" name="model.date" placeholder="Fecha incio" requerid="true" />
    <s:textfield id="evntimelimit" name="model.dateLimit" placeholder="Fecha fin" requerid="true" />
    <s:textfield id="salary" name="model.salary" placeholder="Ingrese una remuneracion para tu artista" />
    <s:textfield id="description" name="model.description" placeholder="Describe lo que tendra tu publicacion" requerid="true"/>
    <s:submit value="Publicar" cssClass="btn btn-default"/>
</s:form>
</body>
</html>