
package helper;

import com.newwayshopping.databases.Database;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.websocket.ClientEndpoint;


public class Delete_product {
 
    public static int delete1(int id){
        return id+100;
        
        
        
//        try {
//            Connection con=Database.getConnection();
//            String query="delete * from product where product_id=?";
//            PreparedStatement ps=con.prepareStatement(query);
//            ps.setInt(1,id);
//            ps.executeUpdate();
//        } catch (Exception ex) {
//            System.out.println(ex.getMessage());
//        }
        
    }
}
