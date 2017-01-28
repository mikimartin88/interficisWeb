/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package baseDatos;

import java.sql.Connection;
import java.sql.DriverManager;
/**/
public class DBConnection {

    private Connection con;

    public DBConnection() {
        con = null;
    }

    public void open(String host, String port, String database, String user, String password) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://"
                    + host + ":" + port
                    + "/" + database, user, password);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
    
    public void close() {
        try {
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public Connection getConection() {
        return con;
    }
}
