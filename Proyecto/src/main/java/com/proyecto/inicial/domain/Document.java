package com.proyecto.inicial.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.persistence.Basic;
import javax.persistence.FetchType;
import javax.persistence.Lob;
import javax.persistence.Transient;
//import org.apache.commons.logging.Log;
//import org.apache.commons.logging.LogFactory;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Document {
	
	//private static final Log log = LogFactory.getLog(Document.class);

    /**
     */
    @NotNull
    @Size(max = 30)
    private String name;

    /**
     */
    @Size(max = 500)
    private String description;

    /**
     */
    @NotNull
    private String filename;

    /**
     */
    @NotNull
    private String contentType;

    /**
     */
    @Transient
    private float size;
    
    @NotNull
    @Lob
    @Basic(fetch = FetchType.LAZY)
    private byte[] content;
    
    
    //@Size(max = 100000)
    private String url ;
}




