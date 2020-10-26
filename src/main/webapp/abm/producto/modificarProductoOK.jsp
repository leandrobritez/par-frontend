<%-- 
    Document   : modificarProductoOk
    Created on : 30/09/2020, 04:38:16 PM
    Author     : justo
--%>

<%@page import="py.una.pol.par.client.CategoryModelo"%>
<%@page import="py.una.pol.par.entity.Category"%>
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
            CategoryModelo cmodel = new CategoryModelo();
            String id = request.getParameter("id");
            String nombre = request.getParameter("nombre");
            Long precio = Long.valueOf(request.getParameter("precio"));
            Integer cantidad = Integer.valueOf(request.getParameter("cantidad"));
            Category categoria = cmodel.getCategoryById(Integer.valueOf(request.getParameter("categoria")));
            Product product = new Product(Integer.valueOf(id.trim()), nombre,categoria, precio, cantidad);  
                model.modificarProduct(product);
                out.println("Producto Modificado");
                out.println(product.toString());
             
        %>
        <button onclick="location.href= 'verProductos.jsp'" type="button"  >MENU</button>
        
        
    </body>
</html>
