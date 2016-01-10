/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dnn.modulolog.log;

import dnn.modulolog.utils.Utilerias;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.Calendar;

/**
 *
 * @author danie
 */
public class Logger {
    public static final int NORMAL = 1;
    public static final int OPERACION = 2;
    public static final int ERROR = 3;
    public static final int EXCEPCION = 5;
    
    /**
     * Metodo para escribir el archivo de log 
     * @param ruta ruta donde se localiza el archivo log
     * @param arch nombre del archivo log
     * @param tipo tipo de mensaje (definido en la clase)
     * @param aplicacion nombre de la aplicacion que genera el mensaje
     * @param clase nombre de la clase que genera el mensaje
     * @param metodo nombre del metodo que genera el mensaje
     * @param mensaje mensaje de excepcion u operacion
     */
    public static void log(String ruta, String arch
            , int tipo, String aplicacion
            , String clase, String metodo
            , String mensaje){
        StringBuilder sb = new StringBuilder();
        try{
            String annio = "";
            String mes = "";
            String dia = "";
            String hora = "";
            Calendar cal = Calendar.getInstance();
            annio = String.valueOf(cal.get(Calendar.YEAR));
            mes = String.valueOf(cal.get(Calendar.MONTH)+1);//<10?"0"+cal.get(Calendar.MONTH)+1:cal.get(Calendar.MONTH)+1);
            dia = String.valueOf(cal.get(Calendar.DATE));
            hora = String.valueOf(cal.get(Calendar.HOUR)+":"+cal.get(Calendar.MINUTE)+":"+cal.get(Calendar.SECOND));
            sb.append(annio+"-"+mes+"-"+dia+" "+hora
                    +"|"+tipo
                    +"|"+aplicacion
                    +"|"+clase
                    +"|"+metodo
                    +"|"+mensaje
            );
            
            if(!Utilerias.existeRuta(ruta))
                Utilerias.creaRuta(ruta);
            
            if(!Utilerias.existeArchivo(arch, ruta))
                Utilerias.creaArchivo(arch, ruta);
            
            FileWriter fichero = new FileWriter(ruta+arch,true);
            PrintWriter pw = new PrintWriter(fichero);
            try{
                pw.println(sb.toString());
                pw.flush();
                pw.close();
            }catch(Exception ex){
                System.out.println("Excepcion interna al escribir en Logger: " +ex);
            }
        }catch(Exception ex){
            System.out.println("Excepcion en Logger " + ex);
        }
    }
    
    /**
     * Metodo para escribir el archivo de log 
     * @param ruta ruta donde se localiza el archivo log
     * @param arch nombre del archivo log
     * @param tipo tipo de mensaje (definido en la clase)
     * @param aplicacion nombre de la aplicacion que genera el mensaje
     * @param clase nombre de la clase que genera el mensaje
     * @param metodo nombre del metodo que genera el mensaje
     * @param mensaje mensaje de excepcion u operacion
     * @param excepcion objeto excepcion generado
     */
    public static void log(String ruta, String arch
            , int tipo, String aplicacion
            , String clase, String metodo
            , String mensaje, Exception excepcion){
        StringBuilder sb = new StringBuilder();
        try{
            String annio = "";
            String mes = "";
            String dia = "";
            String hora = "";
            Calendar cal = Calendar.getInstance();
            annio = String.valueOf(cal.get(Calendar.YEAR));
            mes = String.valueOf(cal.get(Calendar.MONTH)+1);//<10?"0"+cal.get(Calendar.MONTH)+1:cal.get(Calendar.MONTH)+1);
            dia = String.valueOf(cal.get(Calendar.DATE));
            hora = String.valueOf(cal.get(Calendar.HOUR)+":"+cal.get(Calendar.MINUTE)+":"+cal.get(Calendar.SECOND));
            sb.append(annio+"-"+mes+"-"+dia+" "+hora
                    +"|"+tipo
                    +"|"+aplicacion
                    +"|"+clase
                    +"|"+metodo
                    +"|"+mensaje
                    +"|"+excepcion.toString()
            );
            if(!Utilerias.existeRuta(ruta))
                Utilerias.creaRuta(ruta);
            
            if(!Utilerias.existeArchivo(arch, ruta))
                Utilerias.creaArchivo(arch, ruta);
            
            FileWriter fichero = new FileWriter(ruta+arch,true);
            PrintWriter pw = new PrintWriter(fichero);
            try{
                pw.println(sb.toString());
                pw.flush();
                pw.close();
            }catch(Exception ex){
                System.out.println("Excepcion interna al escribir en Logger: " +ex);
            }
        }catch(Exception ex){
            System.out.println("Excepcion en Logger " + ex);
        }
    }
}
