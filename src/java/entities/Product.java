
package entities;


public class Product {
    private int product_id;
    private String product_name;
    private String product_type;
    private String product_cost;
    private String product_image;
    private String product_image_1;
    private String product_image_2;
    private String start_date;
    private String end_date;
    private String puser;

    public Product(int product_id, String product_name, String product_type, String product_cost, String product_image, String start_date, String end_date, String puser) {
        this.product_id = product_id;
        this.product_name = product_name;
        this.product_type = product_type;
        this.product_cost = product_cost;
        this.product_image = product_image;
        this.start_date = start_date;
        this.end_date = end_date;
        this.puser = puser;
    }

    public Product(String product_name, String product_type, String product_cost, String product_image, String start_date, String end_date, String puser) {
        this.product_name = product_name;
        this.product_type = product_type;
        this.product_cost = product_cost;
        this.product_image = product_image;
        this.start_date = start_date;
        this.end_date = end_date;
        this.puser = puser;
    }

    public Product( String product_name, String product_type, String product_cost, String product_image, String product_image_1, String product_image_2, String start_date, String end_date, String puser) {
       
        this.product_name = product_name;
        this.product_type = product_type;
        this.product_cost = product_cost;
        this.product_image = product_image;
        this.product_image_1 = product_image_1;
        this.product_image_2 = product_image_2;
        this.start_date = start_date;
        this.end_date = end_date;
        this.puser = puser;
    }

    public Product(int product_id, String product_name, String product_type, String product_cost, String product_image, String product_image_1, String product_image_2, String start_date, String end_date, String puser) {
        this.product_id = product_id;
        this.product_name = product_name;
        this.product_type = product_type;
        this.product_cost = product_cost;
        this.product_image = product_image;
        this.product_image_1 = product_image_1;
        this.product_image_2 = product_image_2;
        this.start_date = start_date;
        this.end_date = end_date;
        this.puser = puser;
    }

    public String getProduct_image_1() {
        return product_image_1;
    }

    public void setProduct_image_1(String product_image_1) {
        this.product_image_1 = product_image_1;
    }

    public String getProduct_image_2() {
        return product_image_2;
    }

    public void setProduct_image_2(String product_image_2) {
        this.product_image_2 = product_image_2;
    }

   

    public Product() {
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getProduct_type() {
        return product_type;
    }

    public void setProduct_type(String product_type) {
        this.product_type = product_type;
    }

    public String getProduct_cost() {
        return product_cost;
    }

    public void setProduct_cost(String product_cost) {
        this.product_cost = product_cost;
    }

    public String getProduct_image() {
        return product_image;
    }

    public void setProduct_image(String product_image) {
        this.product_image = product_image;
    }

    public String getStart_date() {
        return start_date;
    }

    public void setStart_date(String start_date) {
        this.start_date = start_date;
    }

    public String getEnd_date() {
        return end_date;
    }

    public void setEnd_date(String end_date) {
        this.end_date = end_date;
    }

    public String getPuser() {
        return puser;
    }

    public void setPuser(String puser) {
        this.puser = puser;
    }
    
    
}
