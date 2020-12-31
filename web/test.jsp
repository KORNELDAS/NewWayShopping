<%-- 
    Document   : test
    Created on : 13 Dec, 2020, 8:32:10 PM
    Author     : Asus
--%>

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
                                        Users users1=(Users)session.getAttribute("currentUser");
                                        out.println(users1.getEmail());
//                                        Productdao pr=new Productdao(Database.getConnection());
//                                        ArrayList<Product> list=pr.getProduct(users1.getEmail());
//                                        out.println("hello");
//                                        for(Product li:list){
//                                            out.println(li.getEnd_date());
//                                        }
                                        
                                       Connection con=Database.getConnection();
                                        out.println(con);
                                       String q="select * from product where puser=?";
                                        PreparedStatement ps=con.prepareStatement(q);
                                        ps.setString(1, users1.getEmail());
                                       ResultSet rs=ps.executeQuery();
                                       if(rs.next()){
                                            out.println(rs.getString("product_name"));
                                       }
//                                        while(rs.next()){
//                                            out.println(rs.getString("product_name"));
//                                        }
                                            
                                    %>
    </body>
</html>
