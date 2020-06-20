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
public class ValidateAircraft {
    public static boolean checkUser(String reg_no) {

        try {
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");

            //creating the database
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Flycatcher_user", "app", "app");
            PreparedStatement ps = con.prepareStatement("select * from AIRCRAFT where reg_no=?");
            ps.setString(1, reg_no);
            
          
            
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


