/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dnn.nominae.main.dto;

/**
 *
 * @author danie
 */
public class OpcionMenuDTO {
    public int idOpcion = 0;
    public String menu = "";
    public String nombreMenu = "";
    public String claseComponente = "";
    public String componente = "";

    public int getIdOpcion() {
        return idOpcion;
    }

    public void setIdOpcion(int idOpcion) {
        this.idOpcion = idOpcion;
    }

    public String getMenu() {
        return menu;
    }

    public void setMenu(String menu) {
        this.menu = menu;
    }

    public String getNombreMenu() {
        return nombreMenu;
    }

    public void setNombreMenu(String nombreMenu) {
        this.nombreMenu = nombreMenu;
    }

    public String getClaseComponente() {
        return claseComponente;
    }

    public void setClaseComponente(String claseComponente) {
        this.claseComponente = claseComponente;
    }

    public String getComponente() {
        return componente;
    }

    public void setComponente(String componente) {
        this.componente = componente;
    }

    @Override
    public String toString() {
        return "OpcionMenuDTO{" + "idOpcion=" + idOpcion + ", menu=" + menu + ", nombreMenu=" + nombreMenu + ", claseComponente=" + claseComponente + ", componente=" + componente + '}';
    }
    
}
