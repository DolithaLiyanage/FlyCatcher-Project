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
public class ValidateRegister {
    public static boolean checkUser(String user_email) {

        try {
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");

            //creating the database
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Flycatcher_user", "app", "app");
            PreparedStatement ps = con.prepareStatement("select * from USER2 where user_email=?");
            ps.setString(1, user_email);
            
          
            
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


