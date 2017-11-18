<%--
  Created by IntelliJ IDEA.
  User: Alex
  Date: 11/11/2017
  Time: 02:33 AM
  To change this template use File | Settings | File Templates.
--%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<html>
<head>
    <title>Perfil</title>
    <sb:head/>

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
            <s:a class="navbar-brand" href="home">UZone</s:a>
        </div>


        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">

                <li><a href="#">Inicio</a></li>
                <li><a href="#">Aportaciones</a></li>
                <li><a href="#">Mensajes</a></li>
            </ul>
            <form class="navbar-form navbar-left">


            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Bienvenido usuario</a></li>
                <li><a href="#">Preferencias</a></li>
                <li><a href="#">Mensaje</a></li>
                <li><a href="#">Cerrar sesión</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <h4>Edita tu perfil</h4>
            <img data-src="holder.js/140x140" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIwAAACMCAYAAACuwEE+AAADnklEQVR4Xu3YUU4bARAD0HI3js2ZuEIrkCKlNGRjCazFff1sJpmM/bSUPr2+vv7+5Y8EHkzgCZgHkzL2ngAwIEQJABPFZRgYBqIEgIniMgwMA1ECwERxGQaGgSgBYKK4DAPDQJQAMFFchoFhIEoAmCguw8AwECUATBSXYWAYiBIAJorLMDAMRAkAE8VlGBgGogSAieIyDAwDUQLARHEZBoaBKAFgorgMA8NAlAAwUVyGgWEgSgCYKC7DwDAQJQBMFJdhYBiIEgAmisswMAxECQATxWUYGAaiBICJ4jIMDANRAsBEcRkGhoEoAWCiuAwDw0CUADBRXIaBYSBKAJgoLsPAMBAlAEwUl2FgGIgSACaKyzAwDEQJABPFZRgYBqIEgIniMgwMA1ECwERxGQaGgSgBYKK4DAPDQJQAMFFchoFhIEoAmCguw8AwECUATBSXYWAYiBKYAPPy8vJ+9PPz8z/H33rt8neX4Vvvu5die1/U6DcP/3gw1+V/LP7Wax/Lvlf+rezb+765//jjfzSYoydFCuYI01fvi9s6wRt+PJi3p8pnP3ZuvXYPxSNgvnLfCfqPv8KPBnO59qvAvH3e0VPkeub6R+Db+1KgcVsneMMkmEt5t8o9eop8BuK6q1ufccFz9Pnpv5lOYOSvrzAL5lbQyRPg3m9Qn6H4uPORfWcDcfR9JsEcPQ2ufwW/Lv/o6XDvR+Bnrz36mUdFneX1/w7MvX+nPFqu/4c5C1/f4/QJTDxhTp/y0BcEZqjMxinANFIe2gHMUJmNU4BppDy0A5ihMhunANNIeWgHMENlNk4BppHy0A5ghspsnAJMI+WhHcAMldk4BZhGykM7gBkqs3EKMI2Uh3YAM1Rm4xRgGikP7QBmqMzGKcA0Uh7aAcxQmY1TgGmkPLQDmKEyG6cA00h5aAcwQ2U2TgGmkfLQDmCGymycAkwj5aEdwAyV2TgFmEbKQzuAGSqzcQowjZSHdgAzVGbjFGAaKQ/tAGaozMYpwDRSHtoBzFCZjVOAaaQ8tAOYoTIbpwDTSHloBzBDZTZOAaaR8tAOYIbKbJwCTCPloR3ADJXZOAWYRspDO4AZKrNxCjCNlId2ADNUZuMUYBopD+0AZqjMxinANFIe2gHMUJmNU4BppDy0A5ihMhunANNIeWgHMENlNk4BppHy0A5ghspsnAJMI+WhHcAMldk4BZhGykM7gBkqs3EKMI2Uh3YAM1Rm4xRgGikP7fgDC/oXpnZMYeUAAAAASUVORK5CYII=" class="img-thumbnail" alt="140x140" style="width: 200px; height: 200px;">

        </div>
        <div class="col-md-8">
            <s:form action="self" theme="bootstrap" class="well form-vertical" method="POST" enctype="multipart/form-data">

                <div class="form-group">
                    <s:if test="model.userType.id==1">Artista</s:if><s:if test="model.userType.id==2">Empresario</s:if> <s:property value="model.username"/>
                </div>

<<<<<<< HEAD
                <s:textfield id="name" name="model.name" placeholder="Nombres" label="Nombres" disabled="true"/>
                <s:textfield id="lastName" name="model.lastName" placeholder="Apellidos" label="Apellidos" disabled="true"/>
                <s:textfield id="email" name="model.email" placeholder="Email" label="E-mail" disabled="true"/>
                <s:textfield id="birthDate" name="model.birthDate" placeholder="Fecha de Nacimiento" label="Fecha de Nacimiento" disabled="true"/>
                <s:select id="genre"
                          name="model.genre"
                          label="Selecciona tu genero"
                          headerKey="0"
                          headerValue="--- Select ---"
                          list="#{'M':'Masculino', 'F':'Femenino'}"
                disabled="true"/>
                <s:textfield id="phone" name="model.phone" placeholder="Telefono" label="Telefono" disabled="true"/>
                <s:if test="model.username==#session.username"><s:file id="photoUrl" label="Cambiar foto" disabled="true"/>
                <ul class="nav nav-pills">
                    <button class="btn btn-success">Hacer Cambios</button>
                    <button type="button" class="btn btn-success" disabled>Guardar Cambios</button>
                        <%--<button class="btn btn-primary" type="button">
                            Mensajes <span class="badge">4</span>
                        </button>--%>
                </ul>
                </s:if>
            </s:form>
=======
                        </select>


                        <label for="sel1">Mes</label>
                        <select class="form-control" id="sel1">
                            <option>Enero</option>
                            <option>Febrero</option>
                            <option>Marzo</option>
                            <option>Abril</option>
                            <option>Mayo</option>
                            <option>Junio</option>
                            <option>Julio</option>
                            <option>Agosto</option>
                            <option>Setiembre</option>
                            <option>Octubre</option>
                            <option>Noviembre</option>
                            <option>Diciembre</option>

                        </select>

                    <label>Año</label>
                    <input class="form-control" placeholder="yyyy">
                </div>

                <div class="form-group">
                    <label>Sexo</label>
                    <div class="radio">
                        <label><input type="radio" name="optradio">Hombre</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="optradio">Mujer</label>
                    </div>
                <div class="form-group">
                    <label >Cambiar Foto</label>
                    <input type="file" id="ejemplo_archivo_1">

                </div>
                    <div class="form-group">
                        <label >Sobre ti</label>
                        <textarea class="form-control" rows="5" id="comment"></textarea>

                    </div>
                    <div class="form-group">
                        <label >Habilidades y Conocimientos</label>
                        <textarea class="form-control" rows="5" id="comment"></textarea>

                    </div>
                    <div class="form-group">
                        <label >Ocupación</label>
                        <input type="file" id="ejemplo_archivo_1">

                    </div>
                    <div class="form-group">
                        <label>Ocupación </label>
                        <input class="form-control" placeholder="">

                    </div>

                <button type="submit" class="btn btn-default">Guardar</button>
            </form>
>>>>>>> 62a1fafbbc2c33151006234634f20b1751075cb8
        </div>
    </div>
</div>
</body>
</html>
