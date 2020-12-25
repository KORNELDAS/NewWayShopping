/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import com.newwayshopping.databases.Database;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import passEncrypt.EncryptText;

/**
 *
 * @author gagan
 */
public class ResetPassword extends HttpServlet {

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
            
            String key = request.getParameter("key");
            out.println(key);
            String pass = request.getParameter("pass");
            pass= EncryptText.getEncrypted(EncryptText.getEncrypted(EncryptText.getEncrypted(pass, "MD5"), "SHA-1"), "MD5");
            
            try{
                Connection con=Database.getConnection();
                PreparedStatement ps=con.prepareStatement("select Email from reset_link where res_key=?");
                ps.setString(1,key);
                ResultSet rs=ps.executeQuery();
                if(rs.next()){
                    String email=rs.getString("Email");
                    PreparedStatement ps1=con.prepareStatement("update registration set password=? where email=?");
                    ps1.setString(1, pass);
                    ps1.setString(2,email);
                    ps1.executeUpdate();
                    response.sendRedirect("login.jsp");
                }
            }catch(Exception ex){
                System.out.println(ex.getMessage());
            }
            /*
                select email from reset_link where key=?
                
                update registration set password=? where Email =?
            
            */
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
        processRequest(request, response);
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
