/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package baseDatos;

import baseDatos.DBEmployees.DBEmployeesActions;
import java.util.ArrayList;

/**
 *
 * @author mascport
 */
public class PruebaBD {

    public String pintar(){
        DBEmployeesActions dba = new DBEmployeesActions();
        ArrayList <String> res = dba.getEmployees();
        String aux = "";
        for(int i=0;i<res.size();i++) {
            aux = aux + res.get(i) + "<br/>";
        }
        return aux;
    }    
}
