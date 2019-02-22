/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import model.Feedback;
import java.sql.*;
import mypack.MyCon;

/**
 *
 * @author ankur
 */
public class FeedbackImpl implements IFeedback{
    
    private Connection con;
    private PreparedStatement ps;
    public FeedbackImpl() {
        try {
            con = MyCon.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    @Override
    public void feedback(Feedback f) {
        try
        {
          ps=con.prepareStatement("insert into feedback values(NULL,now(),?,?,?,?)");
          ps.setString(1, f.getName());
          ps.setString(2, f.getEmail());
          ps.setString(3, f.getFeedback());
          ps.setString(4, "no");
          ps.executeUpdate();
        }
    catch(Exception e)
    {
        e.printStackTrace();
    }
   } 
    }
    
