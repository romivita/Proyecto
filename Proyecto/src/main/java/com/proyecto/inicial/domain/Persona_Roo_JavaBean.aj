// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.proyecto.inicial.domain;

import com.proyecto.inicial.domain.Grupo;
import com.proyecto.inicial.domain.Persona;
import com.proyecto.inicial.domain.Rol;
import java.util.Set;

privileged aspect Persona_Roo_JavaBean {
    
    public String Persona.getNombre() {
        return this.nombre;
    }
    
    public void Persona.setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public String Persona.getApellido() {
        return this.apellido;
    }
    
    public void Persona.setApellido(String apellido) {
        this.apellido = apellido;
    }
    
    public Long Persona.getDni() {
        return this.dni;
    }
    
    public void Persona.setDni(Long dni) {
        this.dni = dni;
    }
    
    public Long Persona.getTelefono() {
        return this.telefono;
    }
    
    public void Persona.setTelefono(Long telefono) {
        this.telefono = telefono;
    }
    
    public String Persona.getUsuario() {
        return this.usuario;
    }
    
    public void Persona.setUsuario(String usuario) {
        this.usuario = usuario;
    }
    
    public String Persona.getContrasena() {
        return this.contrasena;
    }
    
    public void Persona.setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }
    
    public boolean Persona.isEnable() {
        return this.enable;
    }
    
    public void Persona.setEnable(boolean enable) {
        this.enable = enable;
    }
    
    public Set<Rol> Persona.getRol() {
        return this.rol;
    }
    
    public void Persona.setRol(Set<Rol> rol) {
        this.rol = rol;
    }
    
    public Set<Grupo> Persona.getGrupo() {
        return this.grupo;
    }
    
    public void Persona.setGrupo(Set<Grupo> grupo) {
        this.grupo = grupo;
    }
    
}