package com.proyecto.inicial.domain;
//import java.util.HashSet;
//import java.util.Set;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ManyToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Persona {

    /**
     */
    @NotNull
    @Size(min = 2)
    private String nombre;

    /**
     */
    @NotNull
    @Size(min = 2)
    private String apellido;

    /**
     */
    @NotNull
    private Long dni;

    /**
     */
    private Long telefono;

    /**
     */
    @NotNull
    @Size(min = 2)
    private String usuario;

    /**
     */
    @NotNull
    @Size(min = 6, max = 15)
    private String contrasena;

    @Column(name = "enable", columnDefinition = "BOOLEAN")
    private boolean enable;

    /**
     */
    @ManyToMany(cascade = CascadeType.PERSIST)
    private Set<Rol> rol = new HashSet<Rol>();

    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Grupo> grupo = new HashSet<Grupo>();
  
}
