/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ankur
 */
public class Admin {
    
   public String username="admin123";
   public String password="admin123";
   
     public String updateprofile()
     {
         return "update profile <a href=updateProfile.jsp><img src='images/update profile.jpg' /></a>";
     }
       public String searchcourse()
     {
         return "select course <a href=searchnew.jsp><img src='images/update profile.jpg' /></a> ";
     }
     public String upload()
     {
         return "Upload <a href=selectcourseIT.jsp><img src='images/update profile.jpg' /></a> "; 
     }
    public String logout()
    {
        return "Logout <a href=logout.jsp><img src='images/update profile.jpg' /></a> ";
    }
    public String managedatabase()
    {
        return "Manage Database:<a href='adminapproval.jsp?approval=course'> <img src='images/update profile.jpg' /></a> <a href='adminapproval.jsp?approval=feedback'> <img src='images/update profile.jpg'/></a><a href='adminapproval.jsp?approval=registration'> <img src='images/update profile.jpg' /></a> ";
    }
   
    
}
