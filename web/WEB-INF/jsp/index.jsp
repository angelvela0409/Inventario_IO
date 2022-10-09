<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Control Clientes</title>
    </head>

    <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-primary mt-2">
        <div class="container-fluid">
            <a style="margin-left: 10px ;border: none" class="btn btn-outline-light" class="navbar-brand" href="catalogo.htm">Catalogo</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation" >
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a style="margin-left:10px ;border: none" class="btn btn-outline-light" aria-current="page" href="#">Nosotros</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left:10px ;border: none" class="btn btn-outline-light" href="bodegap.htm">Bodega</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left:10px ;border: none" class="btn btn-outline-light" href="#">Sucursales</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left:10px ;border: none" class="btn btn-outline-light"href="stockP.htm">Stock</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left:10px ;border: none" class="btn btn-outline-warning text-dark" href="login.htm">Login</a>
                    </li>
                </ul>
            </div>
            <div class="dropdown">
                <button style="border: none" class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                    Usuario ingresado
                </button>
                <div class="dropdown-menu text-center">
                    <a class="dropdown-item" href="#"></a>
                    <img src="">
                    <a class="dropdown-item" href="#">usuario</a>
                    <a class="dropdown-item" href="#">usuario@gmail.com</a>
                    <div class="dropdown-divider" ></div>
                    <a class="dropdown-item" href="#">SALIR</a>
                </div>
            </div>

        </div>
    </nav>

    <div class="container-fluid" mt-4 >
        <div class="card border-success mt-2">
            <div class="card-header bg-info text-white">
                <a  style="border: none" class="btn btn-outline-warning text-dark" href="agregar.htm">Nueva Venta</a>
            </div>

            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>NOMBRE</th>
                                <th>EMPRESA</th>
                                <th>CT.PRODUCTO</th>
                                <th>TIPO PRODUCTO</th>
                                <th>DESTINO</th>
                                <th>FECHA RECIBIDO</th>
                               <th>ENTREGA</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                                <tr>
                                    <td>${dato.Id}</td> 
                                    <td>${dato.nombCliente}</td>
                                    <td>${dato.nombEmpresa}</td>
                                    <td>${dato.cantProducto}</td>
                                    <td>${dato.tipoProducto}</td>
                                    <td>${dato.lugDestino}</td>
                                    <td>${dato.fecha}</td>
                                    <td>
                                        <a class="btn btn-success">Asignar Repartidor</a>
                                        <a class="btn btn-danger">ELIMINAR</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div> 
    </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>

