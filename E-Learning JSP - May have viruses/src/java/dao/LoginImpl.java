/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import model.Login;
import java.sql.*;
import mypack.MyCon;

/**
 *
 * @author ankur
 */
public class LoginImpl implements ILogin{
    
    
     private Connection con;
    private PreparedStatement ps;
    public LoginImpl() {
        try {
            con = MyCon.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    

    @Override
    public void login(Login l) {
         try
        {
          ps=con.prepareStatement("select username and password from registration values(?,?)");
          ps.setString(1, l.getUsername());
          ps.setString(2, l.getPassword());
          ps.executeQuery();
        }
    catch(Exception e)
    {
        e.printStackTrace();
    }

        
        
        
        
    }
    
}
