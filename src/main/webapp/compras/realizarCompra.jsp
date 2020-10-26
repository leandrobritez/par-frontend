<%-- 
    Document   : realizarCompra
    Created on : 26/10/2020, 03:45:20 PM
    Author     : justo
--%>

<%@page import="py.una.pol.par.entity.Product"%>
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
        ProductoModelo pm = new ProductoModelo();
        CarritoImpl carrito = null;
        carrito = (CarritoImpl) request.getSession().getAttribute("carrito");    
        if(carrito != null){
            for(int i = 0; i < carrito.getCarrito().size() ;i++){
            Integer id = carrito.getCarrito().get(i).getProduct().getId();
            Integer cantidad = carrito.getCarrito().get(i).getCantidad();
            Product product = pm.getProductById(id);
            product.setAmount(product.getAmount()- cantidad);
            pm.modificarProduct(product);
            }
            out.println("<p>Compra realizada</p>");
            out.println("<p>Total  : "+carrito.getSubTotal()+"</p>");
            
        }

        request.getSession().removeAttribute("carrito");
        %>
        <button onclick="location.href= 'buscadorProductos.html'" type="button"  >VOLVER</button>
    </body>
</html>
