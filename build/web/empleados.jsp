<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title text-center">Registro Empleados</h5>
                        <div>
                            <form action="Controller?menu=Empleados" method="POST">
                                <div class="form-group">
                                    <label>Documento: </label>
                                    <input type="number" class="form-control" name="txtdocumento" value="${usuarioSeleccionado.getDni()}">
                                    <small class="form-text text-muted">Ingrese el N° DNI</small>
                                </div>
                                <div class="form-group">
                                    <label>Nombre Completo: </label>
                                    <input type="text" class="form-control" name="txtnombre" value="${usuarioSeleccionado.getNombres()}">
                                </div>
                                <div class="form-group">
                                    <label>Correo: </label>
                                    <input type="text" class="form-control" name="txtcorreo" value="${usuarioSeleccionado.getCorreo()}">
                                </div>
                                <div class="form-group">
                                    <label>Password: </label>
                                    <input type="text" class="form-control" name="txtpassword" value="${usuarioSeleccionado.getPassword()}">
                                </div>
                                <div class="form-group">
                                    <label>Estado: </label>
                                    <select class="form-control form-control-sm" name="txtestado">
                                        <option>Activo</option>
                                        <option>Inactivo</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Rol: </label>
                                    <select class="form-control form-control-sm" name="txtrol">
                                        <option>Empleado</option>
                                        <option>Administrador</option>
                                    </select>
                                </div>
                                <br>
                                <center>
                                    <input type="submit" class="btn btn-primary" name="accion" value="Agregar">
                                    <input type="submit" class="btn btn-success" name="accion" value="Actualizar">
                                </center>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-md-8 text-center">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">DNI</th>
                            <th scope="col">NOMBRES</th>
                            <th scope="col">CORREO</th>
                            <th scope="col">CONTRASEÑA</th>
                            <th scope="col">ESTADO</th>
                            <th scope="col">ROL</th>
                            <th scope="col">ACCIONES</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="usuario" items="${usuarios}">
                            <tr>
                                <th scope="row"><c:out value="${usuario.getId()}"/></th>
                                <td><c:out value="${usuario.getDni()}"/></td>
                                <td><c:out value="${usuario.getNombres()}"/></td>
                                <td><c:out value="${usuario.getCorreo()}"/></td>
                                <td><c:out value="${usuario.getPassword()}"/></td>
                                <td><c:out value="${usuario.getEstado()}"/></td>
                                <td><c:out value="${usuario.getRol()}"/></td>
                                <td>
                                    <a class="btn btn-warning" href="Controller?menu=Empleados&accion=Cargar&id=${usuario.getId()}">Editar</a>
                                    <a class="btn btn-danger" href="Controller?menu=Empleados&accion=Eliminar&id=${usuario.getId()}">Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="js/funciones.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/8451ee62f6.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>