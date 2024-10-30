<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <title>Login</title>
    </head>
    <body>
        <div class="container center-block">
            <div class="row justify-content-center">
                <div class="card" style="width: 18rem">
                    <img src="img/login.png" class="card-img-top">
                    <h2 class="text-center">Admin SmartZone</h2>
                    <div class="card-body">
                        <form method="POST" action="Validar">
                            <div class="form-group">
                                <label>Nro Documento</label>
                                <input type="text" class="form-control" name="txtusuario">
                                <small id="emailHelp" class="form-text text-muted">Ingrese su documento</small>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Contraseña</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" name="txtpassword">
                            </div>
                            <div class="form-group form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">Permanecer loggeado</label>
                            </div>
                            <center><button type="submit" class="btn btn-primary" name="accion" value="Ingresar">INGRESAR</button></center>
                            <br>
                        </form>
                        <center><a href="index.jsp">INICIO</a></center>
                    </div>
                </div>
            </div>
        </div>


        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="js/funciones.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/8451ee62f6.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>