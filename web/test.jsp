<%-- 
    Document   : test
    Created on : 13 Dec, 2020, 8:32:10 PM
    Author     : Asus
--%>

<%@page import="java.io.File"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entities.Product"%>
<%@page import="com.newwayshopping.dao.Productdao"%>
<%@page import="com.newwayshopping.databases.Database"%>
<%@page import="entities.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_page.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            
            try {
               
               

                /*int id = Integer.parseInt(request.getParameter("del_id"));

                Connection con = Database.getConnection();
                String query = "delete from product where product_id=?";
                PreparedStatement ps = con.prepareStatement(query);
                ps.setInt(1, id);
                ps.executeUpdate();
                response.sendRedirect("view_product.jsp");*/
               
            } catch (Exception ex) {
                System.out.println(ex.getMessage());
            }
        %>
    </body>
</html>
