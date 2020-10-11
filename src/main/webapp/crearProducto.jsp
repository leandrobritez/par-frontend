<%-- 
    Document   : crearProducto
    Created on : 30/09/2020, 02:30:44 PM
    Author     : justo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="py.una.pol.par.client.ProductoModelo"%>
<%@page import="py.una.pol.par.entity.Product"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Producto Creado!</h1>
        <%
            ProductoModelo model = new ProductoModelo();
            String id = request.getParameter("id");
            String nombre = request.getParameter("nombre");
            String precio = request.getParameter("precio");
            Product product = new Product(Integer.valueOf(id.trim()), nombre, precio);
            Product newProduct = model.getProductById(Integer.valueOf(id.trim()));
            if (newProduct.getId() == null) {
                model.addProduct(product);
                out.println("Producto agregado");
                out.println(product.toString());
            } else {
                out.println("Ya existe id producto en base datos");
                out.println(newProduct.toString());
            }

        %>
        <button onclick="location.href= 'index.html'" type="button"  >MENU</button>




    </body>
</html>
