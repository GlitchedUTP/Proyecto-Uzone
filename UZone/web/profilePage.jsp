<%@ taglib prefix="s" uri="/struts-tags" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Perfil</title>
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
            <a class="navbar-brand" href="#">UZone</a>
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
                <li><s:a href="self"><s:property value="#session.username"/></s:a></li>
                <li><s:a href="logout">Cerrar sesión</s:a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <ul class="nav nav-pills">


        <button type="button" class="btn btn-success">Inicio</button>
        <button type="button" class="btn btn-success">Aportaciones</button>
        <button class="btn btn-primary" type="button">
            Mensajes <span class="badge">4</span>
        </button>

    </ul>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <h4>Edita tu perfil</h4>
            <img data-src="holder.js/140x140" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIwAAACMCAYAAACuwEE+AAADnklEQVR4Xu3YUU4bARAD0HI3js2ZuEIrkCKlNGRjCazFff1sJpmM/bSUPr2+vv7+5Y8EHkzgCZgHkzL2ngAwIEQJABPFZRgYBqIEgIniMgwMA1ECwERxGQaGgSgBYKK4DAPDQJQAMFFchoFhIEoAmCguw8AwECUATBSXYWAYiBIAJorLMDAMRAkAE8VlGBgGogSAieIyDAwDUQLARHEZBoaBKAFgorgMA8NAlAAwUVyGgWEgSgCYKC7DwDAQJQBMFJdhYBiIEgAmisswMAxECQATxWUYGAaiBICJ4jIMDANRAsBEcRkGhoEoAWCiuAwDw0CUADBRXIaBYSBKAJgoLsPAMBAlAEwUl2FgGIgSACaKyzAwDEQJABPFZRgYBqIEgIniMgwMA1ECwERxGQaGgSgBYKK4DAPDQJQAMFFchoFhIEoAmCguw8AwECUATBSXYWAYiBKYAPPy8vJ+9PPz8z/H33rt8neX4Vvvu5die1/U6DcP/3gw1+V/LP7Wax/Lvlf+rezb+765//jjfzSYoydFCuYI01fvi9s6wRt+PJi3p8pnP3ZuvXYPxSNgvnLfCfqPv8KPBnO59qvAvH3e0VPkeub6R+Db+1KgcVsneMMkmEt5t8o9eop8BuK6q1ufccFz9Pnpv5lOYOSvrzAL5lbQyRPg3m9Qn6H4uPORfWcDcfR9JsEcPQ2ufwW/Lv/o6XDvR+Bnrz36mUdFneX1/w7MvX+nPFqu/4c5C1/f4/QJTDxhTp/y0BcEZqjMxinANFIe2gHMUJmNU4BppDy0A5ihMhunANNIeWgHMENlNk4BppHy0A5ghspsnAJMI+WhHcAMldk4BZhGykM7gBkqs3EKMI2Uh3YAM1Rm4xRgGikP7QBmqMzGKcA0Uh7aAcxQmY1TgGmkPLQDmKEyG6cA00h5aAcwQ2U2TgGmkfLQDmCGymycAkwj5aEdwAyV2TgFmEbKQzuAGSqzcQowjZSHdgAzVGbjFGAaKQ/tAGaozMYpwDRSHtoBzFCZjVOAaaQ8tAOYoTIbpwDTSHloBzBDZTZOAaaR8tAOYIbKbJwCTCPloR3ADJXZOAWYRspDO4AZKrNxCjCNlId2ADNUZuMUYBopD+0AZqjMxinANFIe2gHMUJmNU4BppDy0A5ihMhunANNIeWgHMENlNk4BppHy0A5ghspsnAJMI+WhHcAMldk4BZhGykM7gBkqs3EKMI2Uh3YAM1Rm4xRgGikP7fgDC/oXpnZMYeUAAAAASUVORK5CYII=" class="img-thumbnail" alt="140x140" style="width: 200px; height: 200px;">

        </div>
        <div class="col-md-8">
            <form role="form">
                <div class="form-group">
                    <label >Usuario</label>
                    <label >Usuario</label>

                </div>
                <div class="form-group">
                    <label>Pais</label>
                    <input class="form-control" placeholder="Ingrese Pais">

                </div>
                <div class="form-group">
                    <label>Ciudad / Distrito</label>
                    <input class="form-control" placeholder="Ingrese">

                </div>
                <div class="form-group">
                    <label>Fecha de Nacimiento</label>
                    <div><label for="sel1">Día</label></div>

                        <select class="form-control" id="sel1">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                            <option>8</option>
                            <option>9</option>
                            <option>10</option>
                            <option>12</option>
                            <option>13</option>
                            <option>14</option>
                            <option>15</option>
                            <option>16</option>
                            <option>17</option>
                            <option>18</option>
                            <option>19</option>
                            <option>20</option>
                            <option>21</option>
                            <option>22</option>
                            <option>23</option>
                            <option>24</option>
                            <option>25</option>
                            <option>26</option>
                            <option>27</option>
                            <option>28</option>
                            <option>29</option>
                            <option>30</option>
                            <option>31</option>




                        </select>


                        <label for="sel1">Mes</label>
                        <select class="form-control" id="sel12">
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
                        <textarea class="form-control" rows="5" id="comment2"></textarea>

                    </div>
                    <div class="form-group">
                        <label >Ocupación</label>
                        <input type="file" id="ejemplo_archivo_2">

                    </div>
                    <div class="form-group">
                        <label>Ocupación </label>
                        <input class="form-control" placeholder="">

                    </div>

                <button type="submit" class="btn btn-default">Guardar</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
