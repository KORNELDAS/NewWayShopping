package com.newwayshopping.databases;

import java.sql.*;


public class Database {

    private static  Connection con;
    public static Connection getConnection() {
        try{
          Thread.sleep(4000);
            if(con==null){
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/newwayshopping", "root", "");
            }
       
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return con;
    }
  
}
