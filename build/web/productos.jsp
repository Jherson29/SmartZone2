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
                        <h5 class="card-title text-center">Registro Productos</h5>
                        <div>
                            <form action="" method="POST">
                                <div class="form-group">
                                    <label>Nombre del Producto: </label>
                                    <input type="number" class="form-control" name="txtproducto" value="">
                                </div>
                                <div class="form-group">
                                    <br>
                                    <label>Imagen: </label>
                                    <br>
                                    <center>
                                        <input type="file" class="form-control" name="fileImagen">
                                    </center>
                                </div>
                                <div class="form-group">
                                    <br>
                                    <label>Descripcion: </label>
                                    <input type="text" class="form-control" name="txtdescipcion" value="">
                                </div>
                                <div class="form-group">
                                    <label>Precio (UN) </label>
                                    <input type="text" class="form-control" name="txtprecio" value="">
                                </div>
                                <div class="form-group">
                                    <label>Strock: </label>
                                    <input type="text" class="form-control" name="txtstock" value="">
                                </div>
                                <br>
                                <center>
                                    <input type="submit" class="btn btn-primary" name="accion" value="Guardar">
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
                            <th scope="col">ID.PRODUCTO</th>
                            <th scope="col">PRODUCTO</th>
                            <th scope="col">IMG</th>
                            <th scope="col">DESCRIPCION</th>
                            <th scope="col">PRECIO</th>
                            <th scope="col">STOCK</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="usuario" items="${usuarios}">
                            <tr>
                                <th scope="row"></th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>
                                    <a class="btn btn-warning">Editar</a>
                                    <a class="btn btn-danger">Eliminar</a>
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