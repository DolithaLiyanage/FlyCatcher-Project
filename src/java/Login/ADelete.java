/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author pc
 */
public class ADelete extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ADelete</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ADelete at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String reg_no = request.getParameter("reg_no");
        
        
        
        
        try{
            
            //loading the driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
            
            //creating the database
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Flycatcher_user","app","app");
            String statement = "delete from AIRCRAFT where reg_no= ?";
            PreparedStatement ps = con.prepareStatement(statement);
            ps.setString(1, reg_no);
            
            
            int result = ps.executeUpdate();
            
            if(result > 0){
                
                RequestDispatcher rs =request.getRequestDispatcher("AirCraft.jsp");
                rs.forward(request, response);
            }
            else{
                RequestDispatcher rs =request.getRequestDispatcher("AirCraft.jsp");
                rs.include(request, response);
                out.println("<div class=\"container center\">"
                        + "Deletion Failed"
                        + "</div>");
            }
        }
        catch(Exception e){
            e.printStackTrace();
            out.println("<h3>Wrong</h3>");
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
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
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
