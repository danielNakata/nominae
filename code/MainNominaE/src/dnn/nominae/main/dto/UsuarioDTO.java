/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dnn.nominae.main.dto;

import java.util.ArrayList;

/**
 *
 * @author danie
 */
public class UsuarioDTO {
    public int idEmpleado = 0;
    public String usuario = "";
    public String contrasena = "";
    public int idPerfil = 0;
    public String perfil = "";
    public int idEstatusUsuario = 0;
    public String estatusUsuario = "";
    public String fechaReg = "";
    public String fechaMod = "";
    public String fechaUltimoAcc = "";
    public int numIntentos = 0;
    public ArrayList<OpcionMenuDTO> listaOpciones = null;

    public int getIdEmpleado() {
        return idEmpleado;
    }

    public void setIdEmpleado(int idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public int getIdPerfil() {
        return idPerfil;
    }

    public void setIdPerfil(int idPerfil) {
        this.idPerfil = idPerfil;
    }

    public String getPerfil() {
        return perfil;
    }

    public void setPerfil(String perfil) {
        this.perfil = perfil;
    }

    public int getIdEstatusUsuario() {
        return idEstatusUsuario;
    }

    public void setIdEstatusUsuario(int idEstatusUsuario) {
        this.idEstatusUsuario = idEstatusUsuario;
    }

    public String getEstatusUsuario() {
        return estatusUsuario;
    }

    public void setEstatusUsuario(String estatusUsuario) {
        this.estatusUsuario = estatusUsuario;
    }

    public String getFechaReg() {
        return fechaReg;
    }

    public void setFechaReg(String fechaReg) {
        this.fechaReg = fechaReg;
    }

    public String getFechaMod() {
        return fechaMod;
    }

    public void setFechaMod(String fechaMod) {
        this.fechaMod = fechaMod;
    }

    public String getFechaUltimoAcc() {
        return fechaUltimoAcc;
    }

    public void setFechaUltimoAcc(String fechaUltimoAcc) {
        this.fechaUltimoAcc = fechaUltimoAcc;
    }

    public int getNumIntentos() {
        return numIntentos;
    }

    public void setNumIntentos(int numIntentos) {
        this.numIntentos = numIntentos;
    }

    public ArrayList<OpcionMenuDTO> getListaOpciones() {
        return listaOpciones;
    }

    public void setListaOpciones(ArrayList<OpcionMenuDTO> listaOpciones) {
        this.listaOpciones = listaOpciones;
    }
    
    
}
