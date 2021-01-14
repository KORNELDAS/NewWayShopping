package com.newwayshopping.dao;

import entities.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import static java.util.Collections.list;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Productdao {

    private Connection con;

    public Productdao(Connection con) {
        this.con = con;
    }

    public boolean saveProduct(Product product) {
        boolean flag = false;

        try {
            String query = "insert into product(product_name,product_type,product_cost,product_image,product_image_1,product_image_2,start_date,end_date,description,puser) values(?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, product.getProduct_name());
            ps.setString(2, product.getProduct_type());
            ps.setString(3, product.getProduct_cost());
            ps.setString(4, product.getProduct_image());
            ps.setString(5, product.getProduct_image_1());
            ps.setString(6, product.getProduct_image_2());
            ps.setString(7, product.getStart_date());
            ps.setString(8, product.getEnd_date());
            ps.setString(9,product.getDescription());
            ps.setString(10, product.getPuser());
            ps.executeUpdate();
            flag = true;
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }

        return flag;
    }

    // this is for user saw their product which he added  
    public ArrayList<Product> getProduct(String email) {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String query = "select * from product where puser=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int pid = rs.getInt("product_id");

                String pname = rs.getString("product_name");
                String ptype = rs.getString("product_type");
                String pcost = rs.getString("product_cost");
                String pimage = rs.getString("product_image");
                String pimage_1 = rs.getString("product_image_1");
                String pimage_2 = rs.getString("product_image_2");
                String start_date = rs.getString("start_date");
                String end_date = rs.getString("end_date");
                String desc=rs.getString("description");
                String puser = rs.getString("puser");
                Product product = new Product(pid, pname, ptype, pcost, pimage, pimage_1, pimage_2, start_date, end_date,desc, puser);
                list.add(product);
            }

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return list;
    }

    //this is for product showing in index.jsp from database
    public ArrayList<Product> getProduct1() {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String query = "select * from product";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int pid = rs.getInt("product_id");

                String pname = rs.getString("product_name");
                String ptype = rs.getString("product_type");
                String pcost = rs.getString("product_cost");
                String pimage = rs.getString("product_image");
                String pimage_1 = rs.getString("product_image_1");
                String pimage_2 = rs.getString("product_image_2");
                String start_date = rs.getString("start_date");
                String end_date = rs.getString("end_date");
                 String desc=rs.getString("description");
                String puser = rs.getString("puser");
                 Product product = new Product(pid, pname, ptype, pcost, pimage, pimage_1, pimage_2, start_date, end_date,desc, puser);
                list.add(product);
            }

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return list;
    }

    //this is for product showing in welcome.jsp from database
    public ArrayList<Product> getProduct_welcome(String email) {
        ArrayList<Product> list1 = new ArrayList<>();
        try {
            String query = "select * from product where not puser=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int pid = rs.getInt("product_id");

                String pname = rs.getString("product_name");
                String ptype = rs.getString("product_type");
                String pcost = rs.getString("product_cost");
                String pimage = rs.getString("product_image");
                String pimage_1 = rs.getString("product_image_1");
                String pimage_2 = rs.getString("product_image_2");
                String start_date = rs.getString("start_date");
                String end_date = rs.getString("end_date");
                 String desc=rs.getString("description");
                String puser = rs.getString("puser");
                  Product product = new Product(pid, pname, ptype, pcost, pimage, pimage_1, pimage_2, start_date, end_date,desc, puser);
                list1.add(product);
            }

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return list1;
    }
    
    
   
}
