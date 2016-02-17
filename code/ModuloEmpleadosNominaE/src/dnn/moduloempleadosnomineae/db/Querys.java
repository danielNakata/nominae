/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dnn.moduloempleadosnomineae.db;

/**
 *
 * @author danie
 */
public interface Querys {
    public static String spAltaEmpleado = "{ call NE_SP_NUEVOEMPLEADO(?,?,?,?,?,?,?,?) }";
}
