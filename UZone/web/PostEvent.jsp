
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
    <s:label for="evntdate" value="Fecha/Hora Inicio"/>
    <s:date name="evntdate"/>   <s:textfield id="evntime" name="model.date" placeholder="Fecha incio" />
    <s:label for="evntdatelimit" value="Fecha/Hora Finalizacion"/>
    <s:date name="evntdatelimit"/>   <s:textfield id="evntimelimit" name="model.dateLimit" placeholder="Fecha fin" />
    <s:label for="description" value="Descripcion"/>
    <s:textfield id="description" name="model.description"/>
    <s:submit value="Publicar"/>
</s:form>
</body>
</html>