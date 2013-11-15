package com.proyecto.inicial.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Area {

  //HOLA ROMIIII  /**
     */
    @NotNull
    @Size(min = 2)
    private String nombre;

    /**
     */
    @ManyToOne
    private Sucursal sucursal;
}
