<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Usuarios I y E</title>
    </head>
    <body>
        <div class="container-fluid" mt-4 >
            <div class="card border-success mt-2">
                <div class="card-header bg-info text-white">
                    <center> <h2>USUARIOS EXTERNOS</h2> </center>
                    <a  style="border: none" class="btn btn-outline-warning text-dark" href="agregar.htm">USUARIOS INTERNOS</a>
                </div>
               
                    <div class="card-body">
                        <div class="table-responsive-sm">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>USUARIO</th>
                                        <th>CONTRASEÑA</th>
                                        <th>FECHA CREACION</th>
                                        <th>FECHA MODIFICACION</th>
                                        <th>FECHA ELIMINADO</th>
                                        <th>ACCIONES</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="dato5" items="${lista5}">
                                        <tr>
                                            <td>${dato5.Id}</td> 
                                            <td>${dato5.Usuario}</td>
                                            <td>${dato5.Contrasena}</td>
                                            <td>${dato5.FechaC}</td>
                                            <td>${dato5.FechaM}</td>
                                            <td>${dato5.FechaE}</td>
                                            <td>
                                                <a class="btn btn-success">EDITAR</a>
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
