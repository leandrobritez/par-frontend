/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package py.una.pol.par.entity;

import py.una.pol.par.commons.entity.BaseEntity;

/**
 *
 * @author justo
 */
public class Category extends BaseEntity<Integer>{
    
    
    
    public Category(Integer id, String name) {
        super(id, name);
    }

    public Category() {
    }
  

    @Override
    public String toString() {
        return "Category{" +"id="+ this.getId() +"name="+ this.getName() + '}';
    }
    
}
