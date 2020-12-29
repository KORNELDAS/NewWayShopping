/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import com.newwayshopping.dao.Userdao;
import com.newwayshopping.databases.Database;
import entities.Users;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import passEncrypt.EncryptText;


/**
 *
 * @author Asus
 */
public class Registration_servlet extends HttpServlet {

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
           

            
            String s15 = request.getParameter("check-box");
           
            if (s15 == null) {
                out.println("please check the check box");
            } else {
                
                  //fetch the data
            String s1 = request.getParameter("name");
            String s2 = request.getParameter("email");
            String s3 = request.getParameter("password");
            s3 = EncryptText.getEncrypted(EncryptText.getEncrypted(EncryptText.getEncrypted(s3, "MD5"), "SHA-1"), "MD5");
             String s5 = request.getParameter("phone");
            String s6 = request.getParameter("phone1");
            String s7 = request.getParameter("dob");
            String s8 = request.getParameter("gen");
            String s9 = request.getParameter("address");
            String s10 = request.getParameter("address1");
            String s11 = request.getParameter("country");
            String s12 = request.getParameter("state");
            String s13 = request.getParameter("pin");
          //  String s14 = request.getParameter("myfile");
               Users use = new Users(s1, s2, s3, s5, s6, s7, s8, s9, s10, s11, s12, s13);  
                
                Userdao ud = new Userdao(Database.getConnection());
                if (ud.saveUser(use)) {
                   
                    out.println("done");
                 

                } else {
                   
                    out.println("something error");
                 
                }
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
