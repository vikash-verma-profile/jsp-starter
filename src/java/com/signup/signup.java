package com.signup;

import com.db.dbConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author om
 */
public class signup {

    Connection con;
    dbConnection db;
    Statement stmt;

    public int RegisterUser(String firstName, String emailId, String password) {
        int IsInserted = 0;
        String sql = "";
        try {
            db = new dbConnection();
            con = db.GetDbconnection();
            stmt = (Statement) con.createStatement();
            sql = "insert into login(UserName,Password,FirstName) values('" + emailId + "','" + password + "','" + firstName + "' )";
            IsInserted = stmt.executeUpdate(sql);
            con.close();
        } catch (Exception ex) {

        }
        return IsInserted;
    }

    public int getUserId(String emailId, String password) {
        int UserID = 0;
        String sql = "";
        try {
            db = new dbConnection();
            con = db.GetDbconnection();
            stmt = (Statement) con.createStatement();
            sql = "select id from login where UserName='" + emailId + "' and Password='" + password + "'";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                UserID = rs.getInt(1);
            }
            con.close();
        } catch (Exception ex) {

        }
        return UserID;
    }

}
