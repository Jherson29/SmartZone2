<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Inicio</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="Controller?menu=Productos" target="miContenedor"><i class="fas fa-store-alt"></i>&nbsp; Productos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Controller?menu=Empleados&accion=Listar" target="miContenedor"><i class="fa-regular fa-user"></i>&nbsp;Empleados</a>
                        </li>
                    </ul>

                    <li class="nav-item dropdown">
                    <center><a style="color: white">BIENVENIDO</a></center>
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        ${usuario.getNombres()}
                    </a>
                    <ul class="dropdown-menu text-center" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#">DNI: ${usuario.getDni()}</a></li>
                        <li><a class="dropdown-item" href="#">Correo: ${usuario.getCorreo()}</a></li>
                        <div class="dropdown-divider"></div>
                        <form class="dropdown-item" method="POST" action="Validar">
                            <button class="btn btn-danger center-block" type="submit" name="accion" value="Salir">Cerrar Sesion</button>
                        </form>
                    </ul>
                    </li>

                </div>
            </div>
        </nav>

        <div class="mt-3" style="height: 900px">
            <iframe name="miContenedor" style="height: 100%; width: 100%;" frameBorder="1"></iframe>
        </div>

        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="js/funciones.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/8451ee62f6.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
