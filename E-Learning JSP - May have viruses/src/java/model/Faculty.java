/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ankur
 */
public class Faculty {
      public int fid;
    public String fname;
     public String femail;
     
     public Faculty(String name,String email)
     {
         fname=name;
         femail=email;
     }

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
    public String feedback()
    {
        return "Feedback <a href=feedback.jsp><img src='images/update profile.jpg' /></a> ";
    }
    public String logout()
    {
        return "Logout <a href=logout.jsp><img src='images/update profile.jpg' /></a> ";
    }
  
    
}
