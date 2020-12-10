<%-- 
    Document   : reg
    Created on : 10 Dec, 2020, 8:45:52 PM
    Author     : Asus
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.newwayshopping.databases.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <%
        

         boolean f=false;
         
          
              String s1 = request.getParameter("name");
            String s2 = request.getParameter("email");
            String s3 = request.getParameter("password");
           // s3 = EncryptText.getEncrypted(EncryptText.getEncrypted(EncryptText.getEncrypted(s3, "MD5"), "SHA-1"), "MD5");
            String s4 = request.getParameter("password1");
            //s4 = EncryptText.getEncrypted(EncryptText.getEncrypted(EncryptText.getEncrypted(s4, "MD5"), "SHA-1"), "MD5");
            String s5 = request.getParameter("phone");
            String s6 = request.getParameter("phone1");
            String s7 = request.getParameter("dob");
            String s8 = request.getParameter("gen");
            String s9 = request.getParameter("address");
            String s10 = request.getParameter("address1");
            String s11 = request.getParameter("country");
            String s12 = request.getParameter("state");
            String s13 = request.getParameter("pin");
            String s14 = request.getParameter("myfile");
         
         
        try {
           
            
            //users--> databse
            Connection con=Database.getConnection();
            
            String query = "insert into registration(name,email,password,confirm_password,phone_number,alternative_phone_number,date_of_birth,gender,address_1,address_2,country,state,postal_code,image) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, s1);
            pstmt.setString(2, s2);
            pstmt.setString(3, s3);
            pstmt.setString(4, s4);
            pstmt.setString(5, s5);
            pstmt.setString(6, s6);
            pstmt.setString(7, s7);
            pstmt.setString(8, s8);
            pstmt.setString(9, s9);
            pstmt.setString(10, s10);
            pstmt.setString(11, s11);
            pstmt.setString(12, s12);
            pstmt.setString(13, s13);
            pstmt.setString(14, s14);
            
            pstmt.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        %>
        <h1><%=f%></h1>
        <h1><%=s1%></h1>
        <h1><%=s2%></h1>
        <h1><%=s3%></h1>
        
        
    </body>
</html>
