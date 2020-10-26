
import java.util.ArrayList;
import py.una.pol.par.carrito.CarritoImpl;
import py.una.pol.par.client.CategoryModelo;
import py.una.pol.par.client.ProductoModelo;
import py.una.pol.par.client.UserModelo;
import py.una.pol.par.entity.Category;
import py.una.pol.par.entity.Product;
import py.una.pol.par.entity.User;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author mauricio
 */
public class Pruebas {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        ProductoModelo um = new ProductoModelo();
        CategoryModelo cm = new CategoryModelo();
        CarritoImpl carrito = new CarritoImpl();
//        Category c =  new Category(1,"Electrodomesticos");
        carrito.agregarProducto(1, 541);
        System.out.println(carrito.getCantidadProductos(1));

//          System.out.println(cm.getCategoryById(1));
//        Product p = new Product(5,"subarus",c,Long.valueOf("5000"),4);
//        um.addProduct(p);

//        UserModelo usm = new UserModelo();
//        User u = new User();
//        u.setName("Justito");
//        u.setLastname("Machuca");
//        u.setId(1);
////        usm.addUser(u);
//        u.setLastname("Machuca Cabral");
//        u.setEmail("m.machuca@pol.una.py");
//        u.setLoginName("m.justo");
//        u.setPasswd("12345");
//        usm.modificarUser(u);
//        System.out.println(usm.getUser());
    }

}
