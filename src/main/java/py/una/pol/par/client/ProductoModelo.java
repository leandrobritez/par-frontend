/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package py.una.pol.par.client;

import java.util.ArrayList;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.GenericType;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import org.jboss.resteasy.client.jaxrs.ResteasyClientBuilder;
import py.una.pol.par.entity.Product;


/**
 *
 * @author Mauricio
 */
public class ProductoModelo {

    public ArrayList<Product> getProductos() {
        Client client = ResteasyClientBuilder.newClient();
        WebTarget target = client.target("http://localhost:8080/parprdmcs/rest/parprdmcs/v1/categories/products");
        Response response = target.request().get();
        GenericType<ArrayList<Product>> genericType = new GenericType<ArrayList<Product>>() {
        };
        ArrayList<Product> values = response.readEntity(genericType);
        response.close();
        return values;
    }

    public Product getProductById(Integer id) {
        Client client = ResteasyClientBuilder.newClient();
        WebTarget target = client.target("http://localhost:8080/parprdmcs/rest/parprdmcs/v1/categories/products/"+id);
        Response response = target.request().get();
        Product values = response.readEntity(Product.class);
        
        response.close();
        return values;
    }

    public boolean addProduct(Product p) {
        Client client = ResteasyClientBuilder.newClient();
        WebTarget target = client.target("http://localhost:8080/parprdmcs/rest/parprdmcs/v1/categories/products");
        Entity<Product> someEntity = Entity.entity(p, MediaType.APPLICATION_JSON);
        Response response = target.request().post(someEntity);
        Product values = response.readEntity(Product.class);
          
       
        response.close();
        return true;
    }
    
    public boolean modificarProduct(Product p) {
        Client client = ResteasyClientBuilder.newClient();
        WebTarget target = client.target("http://localhost:8080/parprdmcs/rest/parprdmcs/v1/categories/products");
        Entity<Product> someEntity = Entity.entity(p, MediaType.APPLICATION_JSON);
        Response response = target.request().put(someEntity);
        Product values = response.readEntity(Product.class);

        response.close();
        return true;
    }
    
    public boolean deleteProduct(Integer id) {
        Client client = ResteasyClientBuilder.newClient();
        WebTarget target = client.target("http://localhost:8080/parprdmcs/rest/parprdmcs/v1/categories/products/"+id);
        Response response = target.request().delete();
        int values = response.getStatus();
        System.out.println("status " + values);
        response.close();
        return true;
    }
}
