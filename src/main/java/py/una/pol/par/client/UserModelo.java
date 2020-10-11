/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package py.una.pol.par.client;

import java.util.ArrayList;
import javax.ws.rs.PathParam;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.GenericType;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import org.jboss.resteasy.client.jaxrs.ResteasyClientBuilder;
import py.una.pol.par.entity.User;

/**
 *
 * @author justo
 */
public class UserModelo {
     public ArrayList<User> getUser() {
        Client client = ResteasyClientBuilder.newClient();
        WebTarget target = client.target("http://localhost:8080/parusrmcs/rest/usrmcs/users");
        Response response = target.request().get();
        GenericType<ArrayList<User>> genericType = new GenericType<ArrayList<User>>() {
        };
        ArrayList<User> values = response.readEntity(genericType);
        response.close();
        return values;
    }

    public User getUserById(Integer id) {
        Client client = ResteasyClientBuilder.newClient();
        WebTarget target = client.target("http://localhost:8080/parusrmcs/rest/usrmcs/users/"+id);
        Response response = target.request().get();
        User values = response.readEntity(User.class);
        
        response.close();
        return values;
    }

    public boolean addUser(User u) {
        Client client = ResteasyClientBuilder.newClient();
        WebTarget target = client.target("http://localhost:8080/parusrmcs/rest/usrmcs/users");
        Entity<User> someEntity = Entity.entity(u, MediaType.APPLICATION_JSON);
        Response response = target.request().post(someEntity);
        User values = response.readEntity(User.class);
          
       
        response.close();
        return true;
    }
    
    public boolean modificarUser(User u) {
        Client client = ResteasyClientBuilder.newClient();
        WebTarget target = client.target("http://localhost:8080/parusrmcs/rest/usrmcs/users");
        Entity<User> someEntity = Entity.entity(u, MediaType.APPLICATION_JSON);
        Response response = target.request().put(someEntity);
        User values = response.readEntity(User.class);

        response.close();
        return true;
    }
    
    public boolean deleteUser(Integer id) {
        Client client = ResteasyClientBuilder.newClient();
        WebTarget target = client.target("http://localhost:8080/parusrmcs/rest/usrmcs/users"+id);
        Response response = target.request().get();
        int values = response.getStatus();
        System.out.println("status " + values);
        response.close();
        return true;
    }
    
    public boolean loginUser(String loginName, String passwd) {
        Client client = ResteasyClientBuilder.newClient();
        WebTarget target = client.target("http://localhost:8080/parusrmcs/rest/usrmcs/users/"+"?loginName="+loginName+"&passwd="+passwd);
        Response response = target.request().delete();
        int values = response.getStatus();
        System.out.println("status " + values);
        response.close();
        return true;
    }

    
}
