/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package py.una.pol.par.util;


import java.util.Set;
import javax.ws.rs.core.Application;


/**
 *
 * @author justo
 */
@javax.ws.rs.ApplicationPath("webresources")
public class ApplicationConfig extends Application {

    @Override
    public Set<Class<?>> getClasses() {
        Set<Class<?>> resources = new java.util.HashSet<>();
        addRestResourceClasses(resources);
        initializerProyect();
        return resources;
    }


    private void initializerProyect() {
  
    }

    private void addRestResourceClasses(Set<Class<?>> resources) {
    }
}



