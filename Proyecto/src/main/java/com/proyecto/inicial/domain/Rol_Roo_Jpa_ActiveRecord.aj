// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.proyecto.inicial.domain;

import com.proyecto.inicial.domain.Rol;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Rol_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Rol.entityManager;
    
    public static final EntityManager Rol.entityManager() {
        EntityManager em = new Rol().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Rol.countRols() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Rol o", Long.class).getSingleResult();
    }
    
    public static List<Rol> Rol.findAllRols() {
        return entityManager().createQuery("SELECT o FROM Rol o", Rol.class).getResultList();
    }
    
    public static Rol Rol.findRol(Long id) {
        if (id == null) return null;
        return entityManager().find(Rol.class, id);
    }
    
    public static List<Rol> Rol.findRolEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Rol o", Rol.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Rol.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Rol.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Rol attached = Rol.findRol(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Rol.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Rol.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Rol Rol.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Rol merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}