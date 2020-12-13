
package entities;

import java.sql.Timestamp;

public class Users {
    private int serial_number;
    private String name;
    private String email;
    private String password;
    private String confirm_password;
    private String phone_number;
    private String alternative_phone_number;
    private String date_of_birth;
    private String gender;
    private String address_1;
    private String address_2;
    private String country;
    private String state;
    private String postal_code;
   // private String image;
    private Timestamp regdate;

    //constructors
    
   

    public Users(String name, String email, String password, String confirm_password, String phone_number, String alternative_phone_number, String date_of_birth, String gender, String address_1, String address_2, String country, String state, String postal_code) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.confirm_password = confirm_password;
        this.phone_number = phone_number;
        this.alternative_phone_number = alternative_phone_number;
        this.date_of_birth = date_of_birth;
        this.gender = gender;
        this.address_1 = address_1;
        this.address_2 = address_2;
        this.country = country;
        this.state = state;
        this.postal_code = postal_code;
       // this.image = image;
       
    }
    
    // getter and setter

    public int getSerial_number() {
        return serial_number;
    }

    public void setSerial_number(int serial_number) {
        this.serial_number = serial_number;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirm_password() {
        return confirm_password;
    }

    public void setConfirm_password(String confirm_password) {
        this.confirm_password = confirm_password;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getAlternative_phone_number() {
        return alternative_phone_number;
    }

    public void setAlternative_phone_number(String alternative_phone_number) {
        this.alternative_phone_number = alternative_phone_number;
    }

    public String getDate_of_birth() {
        return date_of_birth;
    }

    public void setDate_of_birth(String date_of_birth) {
        this.date_of_birth = date_of_birth;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress_1() {
        return address_1;
    }

    public void setAddress_1(String address_1) {
        this.address_1 = address_1;
    }

    public String getAddress_2() {
        return address_2;
    }

    public void setAddress_2(String address_2) {
        this.address_2 = address_2;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getPostal_code() {
        return postal_code;
    }

    public void setPostal_code(String postal_code) {
        this.postal_code = postal_code;
    }


    public Timestamp getRegdate() {
        return regdate;
    }

    public void setRegdate(Timestamp regdate) {
        this.regdate = regdate;
    }
    
    
    
}
