/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import dao.LoginImpl;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;
import model.Login;
import mypack.MyCon;
/**
 *
 * @author ankur
 */
public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            HttpSession session=request.getSession(true);
            Connection con=MyCon.getConnection();
              
         
            
            PreparedStatement ps=con.prepareStatement("select * from registration where username=? and password=?");
            ps.setString(1, request.getParameter("username"));
            ps.setString(2, request.getParameter("password"));
            
            
            ResultSet rs=ps.executeQuery();  
            if(rs.next())
            {
                String type=rs.getString("type");
                 session.setAttribute("name",rs.getString("name"));
                  session.setAttribute("email",rs.getString("email"));
                if(type.equals("admin"))
                {
                    response.sendRedirect("admin.jsp?type=admin");
                  
                }
                else
                {
                     response.sendRedirect("profile.jsp?type=student");
                }
                 

            }
            else
            {
                out.println("Either user name or password is incorrect Please<a href=login.jsp>Try Again</a>");
            }
        } 
        catch (Exception e) 
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
