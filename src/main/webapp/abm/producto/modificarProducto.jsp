<%-- 
    Document   : modificarProducto
    Created on : 30/09/2020, 04:05:16 PM
    Author     : justo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="py.una.pol.par.client.ProductoModelo"%>
<%@page import="py.una.pol.par.entity.Product"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Modificar producto</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/funciones.js"></script>
        <link rel="stylesheet" type="text/css" href="cs/estilos.css">
    </head>
    <body>
        <% 
        ProductoModelo model = new ProductoModelo();
        Product product = model.getProductById(Integer.valueOf(request.getParameter("id")));
        String id = String.valueOf(product.getId());
        String nombre = product.getName();
        Long precio = product.getPrice();
        Integer cantidad = product.getAmount();
        String categoria = String.valueOf(product.getCategory().getId());
        %>
        <div id="formulario">
        <form name="elForm1" action="modificarProductoOK.jsp" onsubmit="return validacionM()" method="post" >
            Nombre:
            <input type="text" name="nombre" value="<%=nombre%>">
            <br/>
            Precio:
            <input type="text" name="precio" value="<%=precio%>">
            <br/>
            Cantidad:
            <input type="text" name="cantidad" value="<%=cantidad%>">
            <br/>
            Categoria:
            <input type="text" name="categoria" value="<%=categoria%>">
            <br/>
            <p><input type="submit" value="Enviar"></p>
            <input  name="id" type="hidden" value=<%=id%>>
        </form>
        </div>
    </body>
</html>
