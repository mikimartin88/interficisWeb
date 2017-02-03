package WService;

import AccesoBD.AccesoBD;
import AccesoBD.DBActions;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

@WebService(serviceName = "WServiceBD")
public class WServiceBD {

     /**
     * Web service operation
     * @param nombre
     * @param clave
     * @return 
     */
    @WebMethod(operationName = "login")
    public String login(@WebParam(name = "nombre") String nombre, @WebParam(name = "clave") String clave) {
        return DBActions.getResponseLog(nombre, clave);
    }
    
    /**
     * Web service operation
     * @return 
     */
    @WebMethod(operationName = "getNumEmpleados")
    public String getNumEmpleados() {
        AccesoBD abd = new AccesoBD();
        return abd.getNumEmpleados();
    }

    /**
     * Web service operation
     * @param indice
     * @return 
     */
    @WebMethod(operationName = "getEmpleado")
    public String getEmpleado(@WebParam(name = "indice") String indice) {
        AccesoBD abd = new AccesoBD();
        return abd.getEmpleado(Integer.parseInt(indice));
    }

    /**
     * Web service operation
     * @param i
     * @param j
     * @return 
     */
    @WebMethod(operationName = "getEmpleados")
    public String getEmpleados(@WebParam(name = "i") String i, @WebParam(name = "j") String j) {
        AccesoBD abd = new AccesoBD();
        return abd.getEmpleados(Integer.parseInt(i),Integer.parseInt(j));
    }

    /**
     * Web service operation
     * @param emp_no
     * @return 
     */
    @WebMethod(operationName = "getSalaryEmploy")
    public String getSalaryEmploy(@WebParam(name = "emp_no") String emp_no) {
        AccesoBD abd = new AccesoBD();
        return abd.getSalarioEmpleado(Integer.parseInt(emp_no));
    }

}
