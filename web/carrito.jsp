<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.jsp">SmartZone</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="Controlador?accion=home"><i class="fas fa-home"></i>Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="Controlador?accion=home">Seguir Comprando</a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>

        <div class="container mt-4">
            <h3>Carrito</h3>
            <br>
            <div class="row">
                <div class="col-sm-8">
                    <table class="table table-hover">
                        <thead>
                            <tr class="text-center">
                                <th>ITEM</th>
                                <th>ARTICULO</th>
                                <th>DESCRIPCION</th>
                                <th>PRECIO</th>
                                <th>CANT</th>
                                <th>TOTAL</th>
                                <th>ACCION</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="car" items="${carrito}">
                                <tr class="text-center">
                                    <td>${car.getItem()}</td>
                                    <td>
                                        ${car.getNombres()}
                                        <br>
                                        <br>
                                        <img  src="ControladorImg?id=${car.getIdProducto()}" width="100" height="100">
                                    </td>
                                    <td>
                                        <br>${car.getDescripcion()}
                                    </td>
                                    <td>
                                        <br>${car.getPrecioCompra()}
                                    </td>
                                    <td>
                                        <br>${car.getCantidad()}
                                    </td>
                                    <td>
                                        <br>${car.getSubTotal()}
                                    </td>
                                    <td>
                                        <br>
                                        <a  href="Controlador?accion=Delete&idp=${car.getItem()}" id="btnDelete">Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                </div>
                <div class="col-sm-3">
                    <div class="card">
                        <div class="card-header">
                            <h3>Generar Compra</h3>
                        </div>
                        <div class="card-body">
                            <label>Subtotal: </label>
                            <input type="text" value="S/.${totalpagar}" readonly="" class="form-control">
                            <label>Descuento </label>
                            <input type="text" readonly="" class="form-control">
                            <label>Total a Pagar: </label>
                            <input type="text"  value="S/.${totalpagar}" readonly="" class="form-control">
                        </div>
                        <div class="card-footer">
                            <a href="#" class="btn btn-info btn-block">Realizar Pago</a>
                            <a href="#"class="btn btn-danger btn-block">Genera Compra</a>
                        </div>
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
