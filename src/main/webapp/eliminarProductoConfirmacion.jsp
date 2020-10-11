<%-- 
    Document   : eliminarProductoConfirmacion
    Created on : 30/09/2020, 06:20:57 PM
    Author     : justo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Producto Confirmacion</title>
    </head>
    <body>
        <h1>Esta seguro de eliminar Producto?</h1>
        <button onclick="location.href= 'eliminarProducto.jsp?id=<%= request.getParameter("id") %>'" type="button"  >SI</button>
        <button onclick="location.href= 'verProductos.jsp'" type="button"  >NO</button>
    </body>
</html>
