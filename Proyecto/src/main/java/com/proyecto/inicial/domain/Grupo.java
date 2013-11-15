package com.proyecto.inicial.domain;
import java.util.HashSet;
import java.util.Set;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Grupo {

    /**
     */
    @NotNull
    @Size(min = 2)
    private String nombre;

    /**
     */
    @ManyToOne
    private Sucursal sucursal;

    /**
     */
    @ManyToOne
    private Permisos permisos;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL, mappedBy = "grupo")
    private Set<Persona> persona = new HashSet<Persona>();
}
