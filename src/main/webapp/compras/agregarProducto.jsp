<%-- 
    Document   : agregarProducto
    Created on : 26/10/2020, 11:17:02 AM
    Author     : justo
--%>

<%@page import="py.una.pol.par.client.ProductoModelo"%>
<%@page import="py.una.pol.par.carrito.CarritoImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>  

        <title>JSP Page</title>
        <script>
            <%@include file="/compras/js/funciones.js"%>  
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <%
            ProductoModelo pm = new ProductoModelo();
            Integer id = Integer.valueOf(request.getParameter("id"));
            CarritoImpl carrito = (CarritoImpl) request.getSession().getAttribute("carrito");
            Integer cantProductoCarrito = 0;
            if (carrito != null) {
                cantProductoCarrito = pm.getProductById(id).getAmount() - carrito.getCantidadProductos(id);
            } else {
                cantProductoCarrito = pm.getProductById(id).getAmount();
            }

        %>

        <form name="elForm" action="carrito.jsp" onsubmit="return valcant()" method="post" >
            Cantidad:
            <input type="number" name="cantAgregada">
            <br/>
            <input  name="id" type="hidden" value=<%=id%>>
            <input  name="cantDisponible" type="hidden" value=<%=cantProductoCarrito%>>
            <p><input type="submit" value="agregar"></p>
        </form>

    </body>
</html>
