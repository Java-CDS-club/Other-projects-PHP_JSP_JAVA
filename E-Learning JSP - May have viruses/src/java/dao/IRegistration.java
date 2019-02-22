/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import model.Registration;



/**
 *
 * @author ankur
 */
public interface  IRegistration {
    public void getRegister(Registration r);
      public Registration findByUnamePass(String username,String password);
    public void updateProfile(String username,String password,Registration r);
   
    
    
}
