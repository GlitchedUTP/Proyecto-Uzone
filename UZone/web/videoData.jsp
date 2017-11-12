<%@taglib uri="/struts-tags" prefix="s" %>
<%--
  Created by IntelliJ IDEA.
  User: TORRES
  Date: 09/11/2017
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Datos del video</title>
</head>
<body>

    <div class="container">
        <h2>Datos del video</h2>


        <div class="col-md-8">
            <form role="form">
                <div class="form-group">
                    <label >Titulo</label>
                    <s:property value="title"/>

                </div>
                <div class="form-group">
                    <label>Descripcion: </label>
                    <s:property value="description"/>

                </div>
                <div class="form-group">
                    <label>URL: </label>
                    <s:property value="url"/>

                </div>


            </form>
        </div>
    </div>
</body>
</html>
