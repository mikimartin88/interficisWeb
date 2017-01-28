/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package baseDatos.DBEmployees;

import baseDatos.DBConnection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author mmartin
 */
public class DBEmployeesActions {
    public ArrayList <String> getEmployees() {
        DBConnection con = new DBConnection();
        ArrayList <String> res = new ArrayList <> ();
        try {
            con.open(DBEmployeesProperties.HOST,DBEmployeesProperties.PORT,DBEmployeesProperties.DATABASE,DBEmployeesProperties.USER,DBEmployeesProperties.PASSWORD);
            Statement st = con.getConection().createStatement();
            ResultSet rs = st.executeQuery("select * from employees;");
            String aux;
            int num = 0;
            while (num < 10) {
                rs.next();
                aux = rs.getString("first_name");
                aux = aux + " " + rs.getString("last_name");
                res.add(aux);
                num++;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            con.close();
        }
        return res;
    }
}
