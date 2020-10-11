/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package py.una.pol.par.carrito;

import py.una.pol.par.entity.Product;

/**
 *
 * @author justo
 */
public class ItemCarrito {
    
    private Product product;
    private Integer cantidad;

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Integer getSubTotal() {
        
        return Integer.valueOf(String.valueOf(this.product.getPrice())) * this.cantidad;
    }

   

    public Integer getCantidad() {
        return cantidad;
    }

    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }

    @Override
    public String toString() {
        return "ItemCarrito{" + "product=" + product + ", cantidad=" + cantidad + '}';
    }
    
    
    
}
