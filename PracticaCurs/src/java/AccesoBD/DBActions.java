package AccesoBD;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import xml.MakersXML;

public class DBActions {
    
    public static String getResponseLog(String user, String pass) {
        DBConnection con = new DBConnection();
        String aux = "-1";
        try {
            con.open();
            Statement st = con.getConection().createStatement();
            if(user == "admin") throw new SQLException(user);
            ResultSet rs = st.executeQuery("select nivel from e_usuarios "
                    + "where e_usuarios.usuario=" + "\"" + user + "\""
                    + " AND e_usuarios.clave=" + "\"" + pass + "\"" + ";");

            while (rs.next()) {
                aux = rs.getString("nivel");
            }
        } catch (SQLException ex) {
            ex.toString();
        } finally {
            con.close();
        }
        return aux;
    }
    protected String getNumEmployees() {
        String res = "NOP";
        DBConnection con = new DBConnection();
        try {
            con.open();
            Statement st = con.getConection().createStatement();
            ResultSet rs = st.executeQuery("select count(*) from employees;");
            rs.next();
            res = Integer.toString(rs.getInt(1));
            res = (new MakersXML()).xmlNumEmpleados(res);
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            con.close();
        }
        return res;
    }

    protected String getEmp(int i) {
        String res = "";
        DBConnection con = new DBConnection();
        try {
            con.open();
            Statement st = con.getConection().createStatement();
            ResultSet rs = st.executeQuery("select * from employees;");
            rs.absolute(i);
            String[] aux = new String[6];
            aux[0] = Integer.toString(rs.getInt("emp_no"));
            aux[1] = (rs.getDate("birth_date")).toString();
            aux[2] = rs.getString("first_name");
            aux[3] = rs.getString("last_name");
            aux[4] = rs.getString("gender");
            aux[5] = (rs.getDate("hire_date")).toString();
            res = (new MakersXML()).xmlEmpleado(aux);
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            con.close();
        }
        return res;
    }

    protected String getEmps(int i, int j) {
        ArrayList<String> res = new ArrayList<String>();
        DBConnection con = new DBConnection();
        try {
            con.open();
            Statement st = con.getConection().createStatement();
            ResultSet rs = st.executeQuery("select * from employees;");
            rs.absolute(i);
            int vaux = i + j;
            while (i < (vaux - 1)) {
                String[] aux = new String[6];
                aux[0] = Integer.toString(rs.getInt("emp_no"));
                aux[1] = (rs.getDate("birth_date")).toString();
                aux[2] = rs.getString("first_name");
                aux[3] = rs.getString("last_name");
                aux[4] = rs.getString("gender");
                aux[5] = (rs.getDate("hire_date")).toString();
                res.add((new MakersXML()).xmlEmpleadoSimple(aux));
                rs.next();
                i++;
            }
            String[] aux = new String[6];
            aux[0] = Integer.toString(rs.getInt("emp_no"));
            aux[1] = (rs.getDate("birth_date")).toString();
            aux[2] = rs.getString("first_name");
            aux[3] = rs.getString("last_name");
            aux[4] = rs.getString("gender");
            aux[5] = (rs.getDate("hire_date")).toString();
            res.add((new MakersXML()).xmlEmpleadoSimple(aux));
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            con.close();
        }
        return (new MakersXML()).xmlNEmpleados(res);
    }

    protected String getSalaryEmploy(int emp_no) {
        ArrayList<String> res = new ArrayList<String>();
        DBConnection con = new DBConnection();
        try {
            con.open();
            Statement st = con.getConection().createStatement();
            String sql = "select * from salaries where emp_no = " + emp_no+ ";";
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                res.add(Integer.toString(rs.getInt("salary")));
                res.add(rs.getDate("from_date").toString());
                res.add(rs.getDate("to_date").toString());
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            con.close();
        }
        return (new MakersXML()).xmlSalaryEmploy(emp_no, res);
    }
}
