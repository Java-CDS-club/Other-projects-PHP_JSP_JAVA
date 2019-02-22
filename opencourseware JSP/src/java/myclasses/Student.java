/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package myclasses;

import javax.servlet.http.*;
import javax.servlet.*;


/**
 *
 * @author ankur
 */
public class Student {
    public int sid;
    public String sname;
     public String semail;
     
     public Student(String name)
     {
         sname=name;
       
     }

     public String updateprofile()
     {
         return "<a href=updateProfile.jsp><img src='images/updateprofile.jpg' height='200' width='200'/></a>";
     }
       public String searchcourse()
     {
         return "<a href=courses.jsp><img src='images/viewcourses.jpg' height='200' width='200'/></a> ";
     }
     public String viewannouncement()
     {
         return "<a href=announcement.jsp><img src='images/announcements.JPG' height='200' width='200'/></a> ";
     }
    public String feedback()
    {
        return "<a href=feedback.jsp><img src='images/feedback.jpg' height='200' width='200'/></a> ";
    }
    public String logout()
    {
       return "";
        //return "Logout <a href=logout.jsp><img src='images/update profile.jpg' /></a> ";
    }
    
}
