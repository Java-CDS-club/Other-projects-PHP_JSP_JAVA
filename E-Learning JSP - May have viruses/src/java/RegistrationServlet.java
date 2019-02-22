/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.*;
import dao.*;
import mypack.MyCon;
import java.sql.*;
/**
 *
 * @author ankur
 */
public class RegistrationServlet extends HttpServlet {

     
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Connection con;
        PreparedStatement ps;
        
        try {
            con=mypack.MyCon.getConnection();
             RegistrationImpl ri=new RegistrationImpl();
             Registration r=new Registration(request.getParameter("name"),request.getParameter("dob"),request.getParameter("gender"),request.getParameter("address"),request.getParameter("username"), request.getParameter("password"),request.getParameter("contactNo"),request.getParameter("email"),request.getParameter("occupation"),request.getParameter("city"),request.getParameter("district"),request.getParameter("state"),request.getParameter("college"),request.getParameter("security"));
         
             
  
            ps=con.prepareStatement("select username from registration");
             ResultSet rs=ps.executeQuery();
             while(rs.next())
             {
                 if(rs.getString("username").equals(request.getParameter("username")))
                 {
                     out.println("Username Already Exists");
                    // response.sendRedirect("registration.jsp");
                     return;
                     
                 }
                 
                 
              }
               ri.getRegister(r);
    
             
              //out.println("Registration Successful");
             // response.sendRedirect("registration.jsp");
            
    
                 
              
                  
                 
        } 
        catch(Exception e)
        {
          e.printStackTrace(out);  
        }
        
        finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
