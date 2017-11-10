<%@ taglib prefix="s" uri="/struts-tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Compartir video</title>
</head>
<body>
    <h2>Envia un video</h2>
    <div>Haznos llegar todos aquellos vídeos que crees que pueden ser interesantes para publicar. </div>
    <s:form action="dataVideo">
        <s:label for="title" value="Titulo*"/>
        <s:textfield id="title" name="title" placeholder="Dale un titulo a tu video"/>
        <s:label for="description" value="Descripcion*"/>
        <s:textfield id="description" name="description" placeholder="Describe tu video" />
        <s:label for="url" value="URL*"/>
        <s:textfield id="url" name="url" placeholder="Ingre la url del video"  />
        <s:submit value="Enviar video"/>
    </s:form>
</body>
</html>
