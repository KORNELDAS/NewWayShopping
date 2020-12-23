package com.newwayshopping.dao;

import entities.Users;
import java.sql.*;

public class Userdao {

    private Connection con;

    public Userdao(Connection con) {
        this.con = con;
    }

    //method to insert users into database
    public boolean saveUser(Users users) {
        boolean f=false;
        try {
            //users--> databse
            String query = "insert into registration(name,email,password,phone_number,alternative_phone_number,date_of_birth,gender,address_1,address_2,country,state,postal_code) values(?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, users.getName());
            pstmt.setString(2, users.getEmail());
            pstmt.setString(3, users.getPassword());
            pstmt.setString(4, users.getPhone_number());
            pstmt.setString(5, users.getAlternative_phone_number());
            pstmt.setString(6, users.getDate_of_birth());
            pstmt.setString(7, users.getGender());
            pstmt.setString(8, users.getAddress_1());
            pstmt.setString(9, users.getAddress_2());
            pstmt.setString(10, users.getCountry());
            pstmt.setString(11, users.getState());
            pstmt.setString(12, users.getPostal_code());
           // pstmt.setString(14, users.getImage());
            
            pstmt.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    public Users getUserByEmailAndPass(String email,String pass){
        Users user=null;
        
        try{
            String sr="select * from registration where email=? and password=?";
            PreparedStatement pstmt=con.prepareStatement(sr);
            pstmt.setString(1, email);
            pstmt.setString(2, pass);
            ResultSet rs=pstmt.executeQuery();
            if(rs.next()){
                user=new Users();
                //data from databse;
                String name=rs.getString("name");
                //set data to user;
                user.setName(name);
                //above both line combine to on line;
                user.setSerial_number(rs.getInt("serial_number"));
                user.setEmail(rs.getString("email"));
                user.setPhone_number(rs.getString("phone_number"));
                user.setAddress_1(rs.getString("address_1"));
                user.setCountry(rs.getString("country"));
                user.setGender(rs.getString("gender"));
                user.setImage(rs.getString("image"));
                user.setState(rs.getString("state"));
                user.setPostal_code(rs.getString("postal_code"));
                user.setRegdate(rs.getTimestamp("reg_date"));
                
            }
            
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        return user;
    }
    
    public boolean updateuser(Users user){
        boolean status=false;
        try{
            String query="update registration set name=?, email=?, phone_number=?, address_1=?, state=?, postal_code=?,image=? where serial_number=?";
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1, user.getName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPhone_number());
            ps.setString(4, user.getAddress_1());
            ps.setString(5, user.getState());
            ps.setString(6, user.getPostal_code());
            ps.setString(7, user.getImage());
            ps.setInt(8, user.getSerial_number());
            ps.executeUpdate();
            status=true;
        }
        catch(Exception ex){
            ex.printStackTrace();
            
        }
        return status;
        
    }

}
