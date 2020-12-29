package com.newwayshopping.dao;

import entities.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;


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
}
