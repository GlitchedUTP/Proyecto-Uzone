
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Compartir video</title>
</head>
<body>
    <h2>Envia un video</h2>
    <h1>Haznos llegar todos aquellos vídeos que crees que pueden ser interesantes para publicar. </h1>
    <s:form action="post">
        <s:label for="title" value="Video Title"/>
        <s:textfield id="title" name="title" placeholder="Ingresa link del video"/>
        <s:label for="description" value="Product Description"/>
        <s:textfield id="description" name="description"/>
        <s:label for="price" value="Product Price"/>
        <s:textfield id="price" name="price"/>
        <s:label for="supplierEmail" value="Supplier Email"/>
        <s:textfield id="supplierEmail" name="supplierEmail"/>
        <s:submit value="Save"/>
    </s:form>
</body>
</html>
