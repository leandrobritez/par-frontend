<%-- 
    Document   : buscadorProductos.jsp
    Created on : 22/10/2020, 12:49:52 AM
    Author     : justo
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="py.una.pol.par.entity.Product"%>
<%@page import="py.una.pol.par.client.ProductoModelo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/funciones.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de Productos</h1>
        <table>
            <%
                ProductoModelo model = new ProductoModelo();
                String descripcion = request.getParameter("descripcion").trim();
                String tipoBusqueda = request.getParameter("value").trim();
                List<Product> list = new ArrayList<>();
                if(tipoBusqueda.equals("producto") ){
                    if(model.getProductByName(descripcion).getId() != null){
                    list.add(model.getProductByName(descripcion));
                    }
                }else if(tipoBusqueda.equals("categoria")){
                    list = model.getProductsByCategory(descripcion);  
                }
                
                
                out.println("<tr>");
                out.println("<th>Nombre</th>");
                out.println("<th>Precio</th>");
                out.println("<th>Categoria</th>");
                out.println("<th>Cantidad</th>");
                out.println("<th>Agregar a Carrito</th>");
                for (int i = 0; i < list.size(); i++) {
                    out.println("<tr>");
                    out.println("<td>" + list.get(i).getName() + "</td>");
                    out.println("<td>" + list.get(i).getPrice() + "</td>");
                    out.println("<td>" + list.get(i).getCategory().getName() + "</td>");
                    out.println("<td>" + list.get(i).getAmount() + "</td>");
                    out.println("<td>" + "<button onclick=\"location.href= 'agregarProducto.jsp?id=" + list.get(i).getId()+"' \" type=\"button\"  >OK</button>" + "</td>");
                    out.println("</tr>");
                }
                out.println("</tr>");
                
            %>


        </table>
        <%    
            if(list.size() == 0){
            out.println("no se encontro productos con esos valores");
            }
             %>
        <button onclick="location.href= 'buscadorProductos.html'" type="button"  >NUEVA BUSQUEDA</button>     
        <button onclick="location.href= 'carrito.jsp'" type="button"  >VER CARRITO</button>  
    </body>
</html>
