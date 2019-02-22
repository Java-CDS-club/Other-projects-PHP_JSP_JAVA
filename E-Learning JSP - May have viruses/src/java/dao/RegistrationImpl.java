/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.*;
import model.Registration;
import mypack.MyCon;

/**
 *
 * @author ankur
 */
public class RegistrationImpl implements IRegistration{
    private Connection con;
    private PreparedStatement ps;
    public RegistrationImpl() {
        try {
            con = MyCon.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void getRegister(Registration r) {
          
            try {
                
                
                ps = con.prepareStatement("insert into registration values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,NULL)");
             
                 ps.setString(1, r.getName());
                 ps.setString(2, r.getDOB());
                 ps.setString(3, r.getGender());        
                 ps.setString(4, r.getAddress());
                 ps.setString(5, r.getUserName());
                 ps.setString(6, r.getPassword());
                 ps.setString(7, r.getContactNo());
                 ps.setString(8, r.getEmail());
                 ps.setString(9, r.getOccupation());
                 ps.setString(10, r.getCity());
                 ps.setString(11, r.getDistrict());
                 ps.setString(12, r.getState());
                 ps.setString(13,r.getCollege());
                 ps.setString(14,r.getSecurity());
                 ps.setString(15,"student");
                 
                 ps.executeUpdate();      
                
             }
            
            
            
            catch (Exception e) {
                e.printStackTrace();
               
      }
    }

    @Override
    public void updateProfile(String username, String password, Registration r) {
         try {
                
                ps = con.prepareStatement("update registration set name=?,dob=?,gender=?,address=?,contactNo=?,email=?,occupation=?,city=?,district=?,state=?,type=?,college=?,security=? where username=? and password=?");
             
                  ps.setString(14, username);
                 ps.setString(15, password);
                ps.setString(1, r.getName());
                 ps.setString(2, r.getDOB());
                 ps.setString(3, r.getGender());        
                  ps.setString(4, r.getAddress());
                
                 ps.setString(5, r.getContactNo());
                  ps.setString(6, r.getEmail());
                  ps.setString(7, r.getOccupation());
                 ps.setString(8, r.getCity());
                 ps.setString(9, r.getDistrict());
                  ps.setString(10, r.getState());
                  ps.setString(11,"student");
               
                  ps.setString(12, r.getCollege());
                  ps.setString(13, r.getSecurity());
                  ps.executeUpdate();      
               }
            
            
            
            catch (Exception e) {
                e.printStackTrace();
               
      }
        
        
        
        
    }

    @Override
    public Registration findByUnamePass(String username, String password) {
          try {
            ps = con.prepareStatement("select * from registration where username=? and password=?");
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Registration(rs.getString(1), rs.getString(2),rs.getString(3), rs.getString(4),rs.getString(5), rs.getString(6),rs.getString(7), rs.getString(8),
                                        rs.getString(9), rs.getString(10),rs.getString(11), rs.getString(12),rs.getString(14),rs.getString(15));
            } else {
                return null;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
       }
}
    
