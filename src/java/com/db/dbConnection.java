package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author om
 */
public class dbConnection {

    public Connection GetDbconnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/trainingdatabase", "root", "Mindz@007");

        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }
}
