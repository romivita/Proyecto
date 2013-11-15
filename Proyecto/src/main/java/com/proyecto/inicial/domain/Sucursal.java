package com.proyecto.inicial.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Sucursal {

    /**
     */
    @NotNull
    @Size(min = 2)
    private String nombre;

    /**
     */
    @NotNull
    @Size(min = 2)
    private String direccion;

    /**
     */
    @Size(min = 2)
    private String telefono;

}
