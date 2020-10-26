<%-- 
    Document   : borrarProducto
    Created on : 23/10/2020, 01:11:34 PM
    Author     : justo
--%>

<%@page import="py.una.pol.par.client.ProductoModelo"%>
<%@page import="py.una.pol.par.carrito.CarritoImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Integer id = Integer.valueOf(request.getParameter("id"));
            CarritoImpl carrito = null;
            carrito = (CarritoImpl) request.getSession().getAttribute("carrito");
            ProductoModelo model = new ProductoModelo();
            carrito.eliminarProducto(id);
            out.println("Producto Eliminado");
            out.println(model.getProductById(id));
            request.getSession().setAttribute("carrito",carrito);

        
        %>
        <button onclick="location.href= 'carrito.jsp'" type="button"  >VOLVER A CARRITO</button>
    </body>
</html>
