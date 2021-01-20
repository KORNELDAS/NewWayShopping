/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import com.newwayshopping.dao.Productdao;
import com.newwayshopping.databases.Database;
import entities.Product;
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
public class AddProduct extends HttpServlet {

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

            try {
                String s1 = request.getParameter("pname");
                String s2 = request.getParameter("ptype");
                String s3 = request.getParameter("pcost") ;
                
                String s5 = request.getParameter("end_date");
                String s10 = request.getParameter("desc");
                HttpSession hs = request.getSession();
                Users us = (Users) hs.getAttribute("currentUser");
                String s6 = us.getEmail();

                Part part = request.getPart("image");
                String s7 = part.getSubmittedFileName();

                Part part1 = request.getPart("image_1");
                String s8 = part1.getSubmittedFileName();

                Part part2 = request.getPart("image_2");
                String s9 = part2.getSubmittedFileName();
                String real_path = "D:\\projects\\NewWayShopping\\web\\product_image\\";
                Product pb = new Product(s1, s2, s3, s7, s8, s9, s5, s10, s6);
                Productdao pd = new Productdao(Database.getConnection());
                if (pd.saveProduct(pb)) {
                    out.println("done");
                    String newpath = real_path + pb.getProduct_image();
                    String newpath1 = real_path + pb.getProduct_image_1();
                    String newpath2 = real_path + pb.getProduct_image_2();
                    Helper.saveFile(part.getInputStream(), newpath);
                    Helper.saveFile_1(part1.getInputStream(), newpath1);
                    Helper.saveFile_2(part2.getInputStream(), newpath2);
                }

            } catch (Exception ex) {
                out.println(ex.getMessage());
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
