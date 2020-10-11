<%-- 
    Document   : modificarProductoOk
    Created on : 30/09/2020, 04:38:16 PM
    Author     : justo
--%>

<%@page import="py.una.pol.par.entity.Product"%>
<%@page import="py.una.pol.par.client.ProductoModelo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OK PRODUCTO MODIFICADO</title>
    </head>
    <body>
        <h1>Producto Modificado!</h1>
        <%
            ProductoModelo model = new ProductoModelo();
            String id = request.getParameter("id");
            String nombre = request.getParameter("nombre");
            String precio = request.getParameter("precio");
            Product product = new Product(Integer.valueOf(id.trim()), nombre, precio);
                model.modificarProduct(product);
                out.println("Producto Modificado");
                out.println(product.toString());
             
        %>
        <button onclick="location.href= 'verProductos.jsp'" type="button"  >MENU</button>
        
        
    </body>
</html>
