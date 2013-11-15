package com.proyecto.inicial.domain;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Permisos {

    /**
     */
    @NotNull
    private Boolean autorizar;

    /**
     */
    @NotNull
    private Boolean cargar;

    /**
     */
    @NotNull
    private Boolean descargar;

    /**
     */
    @NotNull
    private Boolean rechazar;

    /**
     */
    @NotNull
    private Boolean abm;

    /**
     */
    @NotNull
    @Size(min = 2)
    private String nombre;
}
