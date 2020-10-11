/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package py.una.pol.par.carrito;

import java.util.ArrayList;
import java.util.List;
import py.una.pol.par.client.ProductoModelo;
import py.una.pol.par.entity.Product;

/**
 *
 * @author justo
 */
public class CarritoImpl {

    private List<ItemCarrito> carrito = new ArrayList<>();
    private ProductoModelo model = new ProductoModelo();
    private Integer subTotal = 0;

    public void agregarProducto(Integer idProducto, Integer cantidad) {

        if (containsProducto(idProducto)) {
             agregarCantidad(idProducto,cantidad);
        } else {
            ItemCarrito item = new ItemCarrito();
            item.setProduct(model.getProductById(idProducto));
            item.setCantidad(cantidad);
            this.subTotal = this.subTotal + item.getSubTotal();
            this.carrito.add(item);
        }

    }

    public void eliminarProducto(Integer idProducto) {
        for (int i = 0; i < this.carrito.size(); i++) {
            if (idProducto == this.carrito.get(i).getProduct().getId()) {
                this.subTotal = this.subTotal - this.carrito.get(i).getSubTotal();
                this.carrito.remove(i);

            }
        }

    }

    public boolean containsProducto(Integer idProducto) {
        for (int i = 0; i < this.carrito.size(); i++) {
            if (idProducto == this.carrito.get(i).getProduct().getId()) {
                
                return true;
            }
        }

        return false;
    }
    
    private void agregarCantidad(Integer idProducto, Integer cantidad) {
        for (int i = 0; i < this.carrito.size(); i++) {
            if (idProducto == this.carrito.get(i).getProduct().getId()) {
                
                Integer cantidadNueva = this.carrito.get(i).getCantidad() + cantidad;
                ItemCarrito item = new ItemCarrito();
                item.setProduct(model.getProductById(idProducto));
                item.setCantidad(cantidad);
                this.subTotal = this.subTotal + item.getSubTotal();
                this.carrito.get(i).setCantidad(cantidadNueva);
                
            }
        }


    }

    public List<ItemCarrito> findAllItem() {

        return this.carrito;

    }

    public List<ItemCarrito> getCarrito() {
        return carrito;
    }

    public void setCarrito(List<ItemCarrito> carrito) {
        this.carrito = carrito;
    }

    public ProductoModelo getModel() {
        return model;
    }

    public void setModel(ProductoModelo model) {
        this.model = model;
    }

    public Integer getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(Integer subTotal) {
        this.subTotal = subTotal;
    }

    @Override
    public String toString() {
        return "CarritoImpl{" + "carrito=" + carrito + ", model=" + model + ", subTotal=" + subTotal + '}';
    }

}
