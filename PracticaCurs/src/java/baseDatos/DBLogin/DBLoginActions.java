/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package baseDatos.DBLogin;

import baseDatos.DBConnection;
import baseDatos.MD5;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author mikim
 */
public class DBLoginActions {

    public static boolean insertUser(String user, String password) {
        DBConnection conn = new DBConnection();
        conn.open(DBLoginProperties.HOST, DBLoginProperties.PORT, DBLoginProperties.DATABASE, DBLoginProperties.USER, DBLoginProperties.PASSWORD);
        try {
            Statement st = conn.getConection().createStatement();
            ResultSet rs = st.executeQuery("select * from users;");
            String aux;
            boolean encontrado = false;
            while (!encontrado && rs.next()) {
                rs.next();
                aux = rs.getString("user");
                if (aux == null ? user == null : aux.equals(user)) {
                    encontrado = true;
                }
            }
            if (!encontrado) {
                String passMD5 = MD5.toMD5(password);
                rs = st.executeQuery("INSERT INTO `usuarios` (`id`, `user`, `password`) VALUES (NULL, '" + user + "', '" + passMD5 + "');");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        } finally {
            conn.close();
        }
        return true;
    }

    public static boolean isIn(String user, String password) {
        DBConnection conn = new DBConnection();
        conn.open(DBLoginProperties.HOST, DBLoginProperties.PORT, DBLoginProperties.DATABASE, DBLoginProperties.USER, DBLoginProperties.PASSWORD);
        try {
            Statement st = conn.getConection().createStatement();
            ResultSet rs = st.executeQuery("select * from users;");
            String aux;
            String auxPass = "";
            while (rs.next()) {
                rs.next();
                aux = rs.getString("user");
                if (aux == null ? user == null : aux.equals(user)) {
                    auxPass = rs.getString("password");
                    return (MD5.toMD5(password) == null ? auxPass == null : MD5.toMD5(password).equals(auxPass));
                }
            }
            return false;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        } finally {
            conn.close();
        }
    }
}
