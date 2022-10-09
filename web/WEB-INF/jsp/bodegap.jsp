<%-- 
    Document   : bodega
    Created on : 05-oct-2022, 2:25:01
    Author     : EQUIPO
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <title>Bodega</title>
    </head>
    <body>
        <div class="container-fluid" mt-4 >
            <div class="card border-success mt-2">
                <div class="card-header bg-info text-white">
                    <a class="btn btn-primary" href="agregar.htm">Abastecimiento</a>
                    <a class="btn btn-danger" href="index.htm">Regresar</a>
                </div>
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>SUCURSAL</th>
                                <th>ENTRADA</th>
                                <th>SALIDA</th>
                                <th>STOCK</th>
                                <th>FECHA</th>
                                <th>ACCIONES</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato2" items="${lista2}">
                                <tr>
                                    <td>${dato2.Id}</td> 
                                    <td>${dato2.Sucursal}</td>
                                    <td>${dato2.Entrada}</td>
                                    <td>${dato2.Salida}</td>
                                    <td>${dato2.Stock}</td>
                                    <td>${dato2.Fecha}</td>
                                    <td>
                                        <a class="btn btn-warning">EDITAR</a>
                                        <a class="btn btn-danger">ELIMINAR</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div> 
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

    </body>
</html>
