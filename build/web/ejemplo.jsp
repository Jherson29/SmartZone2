<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GameStore - Consolas y Accesorios</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <!-- Encabezado -->
    <header>
        <div class="logo">
            <h1>GameStore</h1>
        </div>
        <nav>
            <ul>
                <li><a href="index.jsp">Inicio</a></li>
                <li><a href="consolas.jsp">Consolas</a></li>
                <li><a href="accesorios.jsp">Accesorios</a></li>
                <li><a href="contacto.jsp">Contacto</a></li>
                <li><a href="login.jsp">Iniciar sesión</a></li>
            </ul>
        </nav>
    </header>

    <!-- Banner principal -->
    <section class="banner">
        <h2>Las Mejores Consolas y Accesorios del Mercado</h2>
        <p>Encuentra los productos de gaming más populares al mejor precio.</p>
        <a href="productos.jsp" class="btn">Ver Productos</a>
    </section>

    <!-- Sección de productos destacados -->
    <section class="productos-destacados">
        <h3>Productos Destacados</h3>
        <div class="productos">
            <!-- Puedes repetir este bloque para cada producto -->
            <div class="producto">
                <img src="img/ps5.jpg" alt="PS5">
                <h4>PlayStation 5</h4>
                <p>Precio: S/. 2999.00</p>
                <a href="detalleProducto.jsp?id=1" class="btn">Ver Detalles</a>
            </div>
            <div class="producto">
                <img src="img/xbox_series_x.jpg" alt="Xbox Series X">
                <h4>Xbox Series X</h4>
                <p
