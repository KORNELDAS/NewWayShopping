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

public class Bid_product extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            int s1 = Integer.parseInt(request.getParameter("productId"));
            String s2 = request.getParameter("name");
            String s3 = request.getParameter("productName");
            String s4 = request.getParameter("biding_price");
            String s5 = request.getParameter("phone");
            String s6 = request.getParameter("email");
            String s7 = request.getParameter("productPrice");
            Connection con = Database.getConnection();
            try {

                String query = "select * from bidders where product_id=? and user_email=?";
                PreparedStatement ps = con.prepareStatement(query);
                ps.setInt(1, s1);
                ps.setString(2, s6);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    int bidder_id = rs.getInt("bidder_id");
                    try {

                        String quer = "update bidders set biding_price=? where bidder_id=?";
                        PreparedStatement ps1 = con.prepareStatement(quer);
                        ps1.setString(1, s4);
                        ps1.setInt(2, bidder_id);
                        ps1.executeUpdate();
                        response.sendRedirect("welcome.jsp");

                    } catch (Exception ex1) {

                        out.println(ex1.getMessage());
                    }
                } else {
                    
                    try {

                        String query1 = "insert into bidders(name,product_name,product_id,biding_price,base_price,phone,user_email) values(?,?,?,?,?,?,?)";
                        PreparedStatement ps2 = con.prepareStatement(query1);
                        ps2.setString(1, s2);
                        ps2.setString(2, s3);
                        ps2.setInt(3, s1);
                        ps2.setString(4, s4);
                        ps2.setString(5, s7);
                        ps2.setString(6, s5);
                        ps2.setString(7, s6);
                        ps2.executeUpdate();

                        response.sendRedirect("welcome.jsp");

                    } catch (Exception ex2) {
                        out.println(ex2.getMessage());
                        System.out.println(ex2.getMessage());
                    }
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
