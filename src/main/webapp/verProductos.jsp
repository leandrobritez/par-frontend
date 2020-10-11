<%-- 
    Document   : verProductos
    Created on : 30/09/2020, 03:21:57 PM
    Author     : justo
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="py.una.pol.par.client.ProductoModelo"%>
<%@page import="py.una.pol.par.entity.Product"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/funciones.js"></script>
        <link rel="stylesheet" type="text/css" href="cs/estilos.css">
    </head>
    <body>
        <h1>Lista Productos</h1>
        <button onclick="location.href= 'crearProducto.html'" type="button"  >CREAR PRODUCTO</button>
      
    <table>
        <%
            ProductoModelo model = new ProductoModelo();
            List<Product> list = model.getProductos();
            
            out.println("<tr>");
            out.println("<th>Id</th>");
            out.println("<th>Nombre</th>");
            out.println("<th>Precio</th>");
            out.println("<th>Modificar</th>");
            out.println("<th>Eliminar</th>");
            for (int i = 0; i < list.size(); i++) {
                out.println("<tr>");
                out.println("<td>" + list.get(i).getId() + "</td>");
                out.println("<td>" + list.get(i).getName() + "</td>");
                out.println("<td>" + list.get(i).getPrecio() + "</td>");
                out.println("<td>" + "<button onclick=\"location.href= 'modificarProducto.jsp?id=" + list.get(i).getId()+"' \" type=\"button\"  >OK</button>" + "</td>");
                out.println("<td>" + "<a href= 'eliminarProducto.jsp?id=" + list.get(i).getId()+"'  type=\"button\"  onclick=\"return asegurar();\" >OK</a>" + "</td>");
                out.println("</tr>");
            }
            out.println("</tr>");
        %>
        
        
    </table>
     

</body>
</html>
