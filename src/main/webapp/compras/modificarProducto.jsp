<%-- 
    Document   : modificarProducto
    Created on : 23/10/2020, 02:25:24 PM
    Author     : justo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        Integer id = Integer.valueOf(request.getParameter("id"));
    %>
    <body>
        <form name="elForm1" action="carrito.jsp" onsubmit="return validacionM()" method="post" >
            Cantidad:
            <input type="text" name="cant" >
            <br/>
            <p><input type="submit" value="Enviar"></p>
            <input  name="id" type="hidden" value=<%=id%>    >
        </form>
        
        
    </body>
</html>
