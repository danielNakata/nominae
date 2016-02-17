/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dnn.nominae.conf;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Properties;

/**
 *
 * @author danie
 */
public class Config {
    
    
    public static String nombreApp = "";
    public static String descripcionApp= "";
    public static String versionApp = "";
    public static String desarrolladorApp = "";
    public static String lugarApp = "";
    public static String serActualiza = "";
    public static String autor = "";
    
    public static String skinApp = "";
    public static String skinLbl = "";
    public static String skinMethod = "";
    public static String logoString = "";
    
    public static String dbHost = "";
    public static String dbUser = "";
    public static String dbPass = "";
    public static String dbPort = "";
    public static String dbName = "";
    public static String dbClassDriver = "";
    public static String dbUrl = "";
    
    public static String logRuta = "";
    public static String logArch = "";
    
    public static String propsArch = System.getProperty("user.dir")+File.separator+"config"+File.separator+"PropApp.properties";
    public static boolean configCargada = false;
    
    public static Properties propsMain = null;
    
    /**
     * Metodo que carga la configuracion de la aplicacion
     * @return 
     */
    public static boolean cargaConfiguracion(){
        try{
            Properties props = new Properties();
            props.load(new FileInputStream(propsArch));
            
            nombreApp = props.getProperty("nombreApp") != null?props.getProperty("nombreApp").toString():"";
            descripcionApp = props.getProperty("descripcionApp") != null?props.getProperty("descripcionApp").toString():"";
            versionApp = props.getProperty("versionApp") != null?props.getProperty("versionApp").toString():"";
            desarrolladorApp = props.getProperty("desarrolladorApp") != null?props.getProperty("desarrolladorApp").toString():"";
            lugarApp = props.getProperty("lugarApp") != null?props.getProperty("lugarApp").toString():"";
            serActualiza = props.getProperty("serActualiza") != null?props.getProperty("serActualiza").toString():"";
            autor = props.getProperty("autor") != null?props.getProperty("autor").toString():"";
            
            skinApp = props.getProperty("skinApp") != null?props.getProperty("skinApp").toString():"";
            skinLbl = props.getProperty("skinLbl") != null?props.getProperty("skinLbl").toString():"";
            skinMethod = props.getProperty("skinMethod") != null?props.getProperty("skinMethod").toString():"";
            logoString = props.getProperty("logoString") != null?props.getProperty("logoString").toString():"";
            
            dbHost = props.getProperty("dbHost") != null?props.getProperty("dbHost").toString():"";
            dbUser = props.getProperty("dbUser") != null?props.getProperty("dbUser").toString():"";
            dbPass = props.getProperty("dbPass") != null?props.getProperty("dbPass").toString():"";
            dbPort = props.getProperty("dbPort") != null?props.getProperty("dbPort").toString():"";
            dbName = props.getProperty("dbName") != null?props.getProperty("dbName").toString():"";
            dbClassDriver = props.getProperty("dbClassDriver") != null?props.getProperty("dbClassDriver").toString():"";
            dbUrl = props.getProperty("dbUrl") != null?props.getProperty("dbUrl").toString():"";
            
            logRuta = props.getProperty("logRuta") != null?props.getProperty("logRuta").toString():"";
            logArch = props.getProperty("logArch") != null?props.getProperty("logArch").toString():"";
            
            propsMain = props;
            configCargada = true;
        }catch(Exception ex){
            System.out.println("Excepcion en la carga de la configuracion debido a:\n" + ex);
            configCargada= false;
        }
        return configCargada;
    }
    
    public static Properties getProperties(){
        return propsMain;
    }
}
