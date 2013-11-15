// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.proyecto.inicial.domain;

import com.proyecto.inicial.domain.Area;
import com.proyecto.inicial.domain.AreaDataOnDemand;
import com.proyecto.inicial.domain.SucursalDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect AreaDataOnDemand_Roo_DataOnDemand {
    
    declare @type: AreaDataOnDemand: @Component;
    
    private Random AreaDataOnDemand.rnd = new SecureRandom();
    
    private List<Area> AreaDataOnDemand.data;
    
    @Autowired
    SucursalDataOnDemand AreaDataOnDemand.sucursalDataOnDemand;
    
    public Area AreaDataOnDemand.getNewTransientArea(int index) {
        Area obj = new Area();
        setNombre(obj, index);
        return obj;
    }
    
    public void AreaDataOnDemand.setNombre(Area obj, int index) {
        String nombre = "nombre_" + index;
        obj.setNombre(nombre);
    }
    
    public Area AreaDataOnDemand.getSpecificArea(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Area obj = data.get(index);
        Long id = obj.getId();
        return Area.findArea(id);
    }
    
    public Area AreaDataOnDemand.getRandomArea() {
        init();
        Area obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Area.findArea(id);
    }
    
    public boolean AreaDataOnDemand.modifyArea(Area obj) {
        return false;
    }
    
    public void AreaDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Area.findAreaEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Area' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Area>();
        for (int i = 0; i < 10; i++) {
            Area obj = getNewTransientArea(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}