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
import py.una.pol.par.entity.Category;


/**
 *
 * @author justo
 */
public class CategoryModelo {


    public ArrayList<Category> getCategorias() {
        Client client = ResteasyClientBuilder.newClient();
        WebTarget target = client.target("http://localhost:8080/parprdmcs/rest/parprdmcs/v1/categories");
        Response response = target.request().get();
        GenericType<ArrayList<Category>> genericType = new GenericType<ArrayList<Category>>() {
        };
        ArrayList<Category> values = response.readEntity(genericType);
        response.close();
        return values;
    }

    public Category getCategoryById(Integer id) {
        Client client = ResteasyClientBuilder.newClient();
        WebTarget target = client.target("http://localhost:8080/parprdmcs/rest/parprdmcs/v1/categories/"+id);
        Response response = target.request().get();
        Category values = response.readEntity(Category.class);
        
        response.close();
        return values;
    }

    public boolean addCategory(Category c) {
        Client client = ResteasyClientBuilder.newClient();
        WebTarget target = client.target("http://localhost:8080/parprdmcs/rest/parprdmcs/v1/categories");
        Entity<Category> someEntity = Entity.entity(c, MediaType.APPLICATION_JSON);
        Response response = target.request().post(someEntity);
        Category values = response.readEntity(Category.class);
          
       
        response.close();
        return true;
    }
    
    public boolean modificarCategory(Category c) {
        Client client = ResteasyClientBuilder.newClient();
        WebTarget target = client.target("http://localhost:8080/parprdmcs/rest/parprdmcs/v1/categories");
        Entity<Category> someEntity = Entity.entity(c, MediaType.APPLICATION_JSON);
        Response response = target.request().put(someEntity);
        Category values = response.readEntity(Category.class);

        response.close();
        return true;
    }
    
    public boolean deleteCategory(Integer id) {
        Client client = ResteasyClientBuilder.newClient();
        WebTarget target = client.target("http://localhost:8080/parprdmcs/rest/parprdmcs/v1/categories/"+id);
        Response response = target.request().delete();
        int values = response.getStatus();
        System.out.println("status " + values);
        response.close();
        return true;
    }
}
