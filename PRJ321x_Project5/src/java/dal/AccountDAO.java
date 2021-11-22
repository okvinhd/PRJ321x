/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

/**
 *
 * @author thanh
 */
public class AccountDAO extends DBContext {

    public boolean checkAccountByUsernameAndPassword(String username, String password) {
        try {
            String sql = "SELECT [username]\n"
                    + "      ,[password]\n"
                    + "  FROM [Funix_SendMail].[dbo].[Account]\n"
                    + "  WHERE [username] = ? AND [password]= ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                String user = rs.getString("username");
                String pass = rs.getString("password");
                if (user.equals(username) && pass.equals(password)) {
                    return true;
                }
            }
            rs.close();
            stm.close();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
