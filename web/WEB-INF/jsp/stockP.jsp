<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <title>Stock</title>
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
                                <th>CODIGO</th>
                                <th>PRODUCTO</th>
                                <th>MARCA</th>
                                <th>U.MEDIDA</th>
                                <th>CATEGORIA</th>
                                <th>UNIDAD</th>
                                <th>STOCK</th>
                                <th>FECHA</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato3" items="${lista3}">
                                <tr>
                                    <td>${dato3.IdCodigo}</td> 
                                    <td>${dato3.Producto}</td>
                                    <td>${dato3.Marca}</td>
                                    <td>${dato3.uMedida}</td>
                                    <td>${dato3.Categoria}</td>
                                    <td>${dato3.Unidad}</td>
                                    <td>${dato3.Stock}</td>
                                    <td>${dato3.Fecha}</td>
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

