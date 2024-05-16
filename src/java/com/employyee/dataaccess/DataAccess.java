/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.employyee.dataaccess;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Dinesh
 */
public class DataAccess {

    Connection con = null;
    Statement st = null;
    ResultSet rs = null;

    public DataAccess() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/employee", "root", "root");

        } catch (SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public boolean executeCommand(String query) {
        boolean flag = false;
        try {
            st = con.createStatement();
            st.executeUpdate(query);
            flag = true;
        } catch (SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            return flag;
        }
    }

    public ResultSet getData(String query) {
        try {
            st = con.createStatement();
            rs = st.executeQuery(query);
        } catch (SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            return rs;
        }
    }

    public int getLength(ResultSet rs) {
        int count = 0;
        try {

            while (rs.next()) {
                count++;
            }
            rs.first();
        } catch (SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            return count;
        }
    }
}
