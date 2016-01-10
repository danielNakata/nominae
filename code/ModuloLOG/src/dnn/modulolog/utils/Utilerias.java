/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dnn.modulolog.utils;

import java.io.File;
import java.io.IOException;

/**
 *
 * @author danie
 */
public class Utilerias {
    
    /**
     * Metodo para validar si existe la ruta para el log de la aplicacion
     * @param ruta
     * @return 
     */
    public static boolean existeRuta(String ruta){
        File f = new File(ruta);
        if(f.exists()){
            return f.isDirectory();
        }
        return false;
    }
    
    /**
     * Metodo para verificar si existe el archivo log para escribir los eventos
     * @param archivo
     * @param ruta
     * @return 
     */
    public static boolean existeArchivo(String archivo, String ruta){
        File f = new File(ruta);
        if(f.exists()){
            if(f.isDirectory()){
                File a = new File(ruta+archivo);
                return a.exists()&&a.isFile();
            }
        }
        return false;
    }
    
    /**
     * Metodo para crear la ruta donde se colocara el archivo log
     * @param ruta
     * @return 
     */
    public static boolean creaRuta(String ruta){
        File f = new File(ruta);
        return f.mkdirs();
    }
    
    /**
     * Metodo para crear el arhivo log vacio
     * @param archivo
     * @param ruta
     * @return
     * @throws IOException 
     */
    public static boolean creaArchivo(String archivo, String ruta) throws IOException{
        File f = new File(ruta);
        if(f.exists()){
            File a = new File(ruta+archivo);
            return a.createNewFile();
        }
        return false;
    }
    
}
