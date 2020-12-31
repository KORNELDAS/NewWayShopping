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
            String query = "insert into product(product_name,product_type,product_cost,product_image,start_date,end_date,puser) values(?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, product.getProduct_name());
            ps.setString(2, product.getProduct_type());
            ps.setString(3, product.getProduct_cost());
            ps.setString(4, product.getProduct_image());
            ps.setString(5, product.getStart_date());
            ps.setString(6, product.getEnd_date());
            ps.setString(7, product.getPuser());
            ps.executeUpdate();
            flag=true;
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }

        return flag;
    }
    
    public ArrayList<Product> getProduct(String email){
        ArrayList<Product> list=new ArrayList<>();
        try {
            String query="select * from product where puser=?";
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1, email);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                int pid=rs.getInt("product_id");
                
                String pname=rs.getString("product_name");
                String ptype=rs.getString("product_type");
                String pcost=rs.getString("product_cost");
                String pimage=rs.getString("product_image");
                String start_date=rs.getString("start_date");
                String end_date=rs.getString("end_date");
                String puser=rs.getString("puser");
                Product product=new Product(pid,pname,ptype,pcost,pimage,start_date,end_date,puser);
                list.add(product);
            }
            
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return list;
    }
}
