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
import  dao.*;

import model.Feedback;
import java.sql.*;
import mypack.MyCon;


/**
 *
 * @author ankur
 */
public class FeedbackServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
        Connection con;
        PreparedStatement ps;
       
        try {
             con=mypack.MyCon.getConnection();
              FeedbackImpl fi=new FeedbackImpl();
              Feedback f=new Feedback(request.getParameter("name"),request.getParameter("email"),request.getParameter("feedback"),request.getParameter("approve"));
              
               fi.feedback(f);
              ps=con.prepareStatement("select feedback from feedback where approve='yes'");
             ResultSet rs=ps.executeQuery();
             while(rs.next())
             {
              
                  out.println(rs.getString("feedback"));
                   
                  
             }
            
            
              
            }
        catch(Exception e)
        {
            e.printStackTrace();
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
