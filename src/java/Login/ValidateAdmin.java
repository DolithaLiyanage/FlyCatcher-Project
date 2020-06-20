/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
/**
 *
 * @author pc
 */
public class ValidateAdmin {
    public static boolean checkUser(String admin_email, String admin_password) {

        try {
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");

            //creating the database
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Flycatcher_user", "app", "app");
            PreparedStatement ps = con.prepareStatement("select * from ADMIN where admin_email=? and admin_password=?");
            ps.setString(1, admin_email);
            ps.setString(2, admin_password);
          
            
            ResultSet rs = ps.executeQuery();
            
            if(rs.next())
            {
                return true;
            }
            else
            {
                return false;
            }
        
        
        
        
        } catch (Exception e) {

            e.printStackTrace();
            return false;
        }

    }
}


