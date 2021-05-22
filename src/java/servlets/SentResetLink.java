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
import java.sql.SQLException;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mailing.SendingMail;
import passEncrypt.EncryptText;

/**
 *
 * @author gagan
 */
public class SentResetLink extends HttpServlet {

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
            String err="";
            Connection con = null;
            PreparedStatement ps = null;
           
            Random r = new Random();
            String email = request.getParameter("email");
            String key = EncryptText.getEncrypted(email + r.nextInt(1000), "MD5");
            String link = "http://localhost:8084/NewWayShopping/forgotpwd.jsp?key=" + key;
            //for checking email into database;
            try {
                 con = Database.getConnection();
                ps = con.prepareStatement("select * from registration where email=?");
                ps.setString(1, email);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    err="use";
                    HttpSession hv=request.getSession();
                    hv.setAttribute("error1", err);
                    SendingMail.send(email, "Reset Password Link", link);

                    try {

                        ps = con.prepareStatement("insert into reset_link(Email,res_key) values(?,?)");
                        ps.setString(1, email);
                        ps.setString(2, key);
                        ps.executeUpdate();
                    } catch (Exception e) {
                        out.print("Reset 2nd Time");
                        try {
                            ps = con.prepareStatement("update reset_link set res_key=? where Email=?");
                            ps.setString(1, key);
                            ps.setString(2, email);
                            ps.executeUpdate();
                        } catch (Exception e1) {
                            out.print(e1.getMessage());
                        }
                    }
                    response.sendRedirect("forgotpwd.jsp");
                } else {
                    err="notuse";
                   HttpSession hsp=request.getSession();
                   hsp.setAttribute("error", err);
                   response.sendRedirect("forgotpwd.jsp");
                    
                }
            } catch (Exception ex) {
                System.out.println(ex.getMessage());
            }

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
