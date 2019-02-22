/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package myclasses;

/**
 *
 * @author ankur
 */
public class Admin {
    
   public String username="admin123";
   public String password="admin123";
   
     public String updateprofile()
     {
         return "<a href=updateProfile.jsp><img src='images/updateprofile.jpg' height='200' width='200'/></a>";
     }
       public String searchcourse()
     {
         return "<a href=courses.jsp><img src='images/viewcourses.jpg' height='200' width='200'/></a> ";
     }
     public String upload()
     {
         return "<a href=upload.jsp><img src='images/upload.jpeg' height='200' width='200'/></a> ";
     }
    public String feedback()
    {
        return "<a href=feedback.jsp><img src='images/feedback.jpg' height='200' width='200'/>Feedback </a> ";
    }
    public String logout()
    {
        return "";
    }
   
    
}
