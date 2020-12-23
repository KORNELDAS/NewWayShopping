/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import com.newwayshopping.dao.Userdao;
import com.newwayshopping.databases.Database;
import entities.Users;
import helper.Helper;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Asus
 */
@MultipartConfig
public class EditUser extends HttpServlet {

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
            out.println("<title>Servlet NewServlet</title>");

            out.println("</head>");
            out.println("<body>");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            String state = request.getParameter("state");
            String pin = request.getParameter("pin");

            //yahi par error aa raha hai jabki kisi or project me use kar rahe hai to ye error nahi aa raha;
            Part part = request.getPart("image");
            String path = part.getSubmittedFileName();

            //this is for fetching current user data 
            HttpSession hs = request.getSession(false);
            Users us = (Users) hs.getAttribute("currentUser");

            //this is for set new data into current user data
            us.setName(name);
            us.setEmail(email);
            us.setPhone_number(phone);
            us.setAddress_1(address);
            us.setState(state);
            us.setPostal_code(pin);
            String oldpic = us.getImage();
            us.setImage(path);

            //update into databse;
            Userdao ud = new Userdao(Database.getConnection());
            boolean ans = ud.updateuser(us);
            if (ans) {
                //this is for upload image into server folder pics
                String newpath = request.getRealPath("/") + "pics" + File.separator + us.getImage();
                String oldpath = request.getRealPath("/") + "pics" + File.separator + oldpic;
                if (!oldpic.equals("default.png")) {
                    Helper.deleteFile(oldpath);
                }
                if (Helper.saveFile(part.getInputStream(), newpath)) {
                    out.println("pic uploaded");
                    
                } else {
                    out.println("not uploded");
                }

            } else {
                out.println("no update");
            }

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
