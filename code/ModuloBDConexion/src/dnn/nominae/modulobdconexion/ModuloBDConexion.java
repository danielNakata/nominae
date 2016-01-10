/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dnn.nominae.modulobdconexion;

import dnn.nominae.modulobdconexion.db.utils.Conexion;
import java.sql.Connection;
import java.util.Properties;

/**
 *
 * @author danie
 */
public class ModuloBDConexion {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Conexion con = new Conexion();
        con.creaConexion("127.0.0.1", "usrnominae", "usrnominae", "3306", "nominae", "com.mysql.jdbc.Driver", "jdbc:mysql:");
        Connection conn = con.getConexion();
        if(conn != null){
            try{
                Properties props = conn.getClientInfo();
                while(props.keys().hasMoreElements()){
                    System.out.println(props.get(props.keys().nextElement()));
                }
            }catch(Exception ex){
                System.out.println(ex.toString());
            }
            System.out.println("Conexion completada!");
        }
    }
    
}
