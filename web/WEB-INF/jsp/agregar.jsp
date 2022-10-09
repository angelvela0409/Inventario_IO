<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Registro clientes</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h3>Datos para el envio</h3>
                </div>
                    <div class="card-body">
                        <form method="POST">
                            <label>Nombre:</label>
                            <input type="text" name="nombCliente" class="form-control" required="ingrese su nombre" autocomplete="off" maxlength="50">
                            <label>Empresa:</label>
                            <input type="text" name="nombEmpresa" class="form-control" required="ingrese su nombre" autocomplete="off">
                            <label>Cant. Producto</label>
                            <input type="number" name="cantProducto" class="form-control" required="ingrese su nombre" autocomplete="off">
                            <label>Destino</label>
                            <input type="text" name="lugDestino" class="form-control" required="ingrese su nombre" autocomplete="off">
                            <label>Producto</label>
                            <input type="text" name="tipoProducto" class="form-control" required="ingrese su nombre" autocomplete="off">
                            <br>
                            <input type="submit" name="Agregar" class="btn btn-success" value="REALIZAR PEDIDO" required="ingrese su nombre" autocomplete="off">
                             <a  style="border: none" class="btn btn-outline-warning text-dark" href="catalogo.htm">Regresar</a>

                        </form>
                    </div>
            </div>
        </div>
        </body>
</html>
