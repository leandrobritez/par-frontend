<%-- 
    Document   : eliminarProducto
    Created on : 30/09/2020, 05:54:28 PM
    Author     : justo
--%>

<%@page import="py.una.pol.par.entity.Product"%>
<%@page import="py.una.pol.par.client.ProductoModelo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Producto</title>
    </head>
    <body>
        <h1>Producto Eliminado</h1>
        <%
            ProductoModelo model = new ProductoModelo();
            String id = request.getParameter("id");
            String nombre = request.getParameter("nombre");
            String precio = request.getParameter("precio");
            Product product = model.getProductById(Integer.valueOf(id));
                model.deleteProduct(Integer.valueOf(id));
                out.println("Producto Eliminado");
                out.println(product.toString());
             
        %>
        <button onclick="location.href= 'verProductos.jsp'" type="button"  >MENU</button>
    </body>
</html>
