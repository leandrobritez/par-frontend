<%-- 
    Document   : carrito
    Created on : 23/10/2020, 12:16:04 AM
    Author     : justo
--%>

<%@page import="py.una.pol.par.client.ProductoModelo"%>
<%@page import="py.una.pol.par.entity.Product"%>
<%@page import="py.una.pol.par.carrito.CarritoImpl"%>
<%@page import="py.una.pol.par.carrito.CarritoServlet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/funciones.js"></script>
    </head>
    <body>
        <h1>Carrito de Compras</h1>
        <%
            String message = "";
            ProductoModelo pm = new ProductoModelo();
            CarritoImpl carrito = null;
            carrito = (CarritoImpl) request.getSession().getAttribute("carrito");
            if (carrito == null) {
                carrito = new CarritoImpl();
                request.getSession().setAttribute("carrito", carrito);
            }
            
            if(request.getParameter("cant") != null){
                int cantidads = Integer.valueOf(request.getParameter("cant"));
                int id = Integer.valueOf(request.getParameter("id"));
                Product product = pm.getProductById(id);
                if(cantidads<=product.getAmount()){
                carrito.modificarCantidad(id, cantidads);
                request.getSession().setAttribute("carrito", carrito);
                message = "cantidad modificada con exito";
                }else{
                message = "cantidad no modificada la cantidad deseada supera la disponible";
                
                }
            }
            if(request.getParameter("cantAgregada") != null){
                int cantAgregada = Integer.valueOf(request.getParameter("cantAgregada"));
                Integer idProducto = Integer.valueOf(request.getParameter("id"));
                carrito.agregarProducto(idProducto, cantAgregada);
                request.getSession().setAttribute("carrito", carrito);
                message = "Producto Agregado a Carrito";
            }
            


        %>
        <table>
            <%
                out.println("<tr>");
                out.println("<th>Nombre</th>");
                out.println("<th>Categoria</th>");
                out.println("<th>SubTotal</th>");  
                out.println("<th>Cantida Comprada</th>");  
                out.println("<th>Cantidad Disponible</th>");
                out.println("<th>Modificar Cantidad</th>");
                out.println("<th>Borrar</th>");
                for (int i = 0; i < carrito.getCarrito().size(); i++) {
                    out.println("<tr>");
                    out.println("<td>" + carrito.getCarrito().get(i).getProduct().getName() + "</td>");
                    out.println("<td>" + carrito.getCarrito().get(i).getProduct().getCategory().getName() + "</td>");
                    out.println("<td>" + carrito.getCarrito().get(i).getSubTotal() + "</td>");
                    out.println("<td>" + carrito.getCarrito().get(i).getCantidad() + "</td>");
                    out.println("<td>" + carrito.getCarrito().get(i).getProduct().getAmount() + "</td>");
                    out.println("<td>" + "<a href= 'modificarProducto.jsp?id=" + carrito.getCarrito().get(i).getProduct().getId()+"'  type=\"button\"  >OK</a>" + "</td>");
                    out.println("<td>" + "<a href= 'borrarProducto.jsp?id=" + carrito.getCarrito().get(i).getProduct().getId()+"'  type=\"button\"  onclick=\"return asegurar();\" >OK</a>" + "</td>");
                    out.println("</tr>");
                }
                out.println("</tr>");
                
            %>    
        </table>     
        
        <%  out.println("<p>Total  : "+carrito.getSubTotal()+"</p>");
            out.println("<h1>"+ message +"</h1>");%>    
        <button onclick="location.href= 'buscadorProductos.html'" type="button"  >BUSCAR PRODUCTOS</button>
        <button onclick="location.href= 'realizarCompra.jsp'" type="button"  >REALIZAR COMPRA</button>
    </body>
</html>
