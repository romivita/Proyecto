// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.proyecto.inicial.domain;

import com.proyecto.inicial.domain.Grupo;
import com.proyecto.inicial.domain.GrupoDataOnDemand;
import com.proyecto.inicial.domain.GrupoIntegrationTest;
import java.util.Iterator;
import java.util.List;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect GrupoIntegrationTest_Roo_IntegrationTest {
    
    declare @type: GrupoIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: GrupoIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: GrupoIntegrationTest: @Transactional;
    
    @Autowired
    GrupoDataOnDemand GrupoIntegrationTest.dod;
    
    @Test
    public void GrupoIntegrationTest.testCountGrupoes() {
        Assert.assertNotNull("Data on demand for 'Grupo' failed to initialize correctly", dod.getRandomGrupo());
        long count = Grupo.countGrupoes();
        Assert.assertTrue("Counter for 'Grupo' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void GrupoIntegrationTest.testFindGrupo() {
        Grupo obj = dod.getRandomGrupo();
        Assert.assertNotNull("Data on demand for 'Grupo' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Grupo' failed to provide an identifier", id);
        obj = Grupo.findGrupo(id);
        Assert.assertNotNull("Find method for 'Grupo' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Grupo' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void GrupoIntegrationTest.testFindAllGrupoes() {
        Assert.assertNotNull("Data on demand for 'Grupo' failed to initialize correctly", dod.getRandomGrupo());
        long count = Grupo.countGrupoes();
        Assert.assertTrue("Too expensive to perform a find all test for 'Grupo', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Grupo> result = Grupo.findAllGrupoes();
        Assert.assertNotNull("Find all method for 'Grupo' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Grupo' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void GrupoIntegrationTest.testFindGrupoEntries() {
        Assert.assertNotNull("Data on demand for 'Grupo' failed to initialize correctly", dod.getRandomGrupo());
        long count = Grupo.countGrupoes();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Grupo> result = Grupo.findGrupoEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'Grupo' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Grupo' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void GrupoIntegrationTest.testFlush() {
        Grupo obj = dod.getRandomGrupo();
        Assert.assertNotNull("Data on demand for 'Grupo' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Grupo' failed to provide an identifier", id);
        obj = Grupo.findGrupo(id);
        Assert.assertNotNull("Find method for 'Grupo' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyGrupo(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'Grupo' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void GrupoIntegrationTest.testMergeUpdate() {
        Grupo obj = dod.getRandomGrupo();
        Assert.assertNotNull("Data on demand for 'Grupo' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Grupo' failed to provide an identifier", id);
        obj = Grupo.findGrupo(id);
        boolean modified =  dod.modifyGrupo(obj);
        Integer currentVersion = obj.getVersion();
        Grupo merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'Grupo' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void GrupoIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'Grupo' failed to initialize correctly", dod.getRandomGrupo());
        Grupo obj = dod.getNewTransientGrupo(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Grupo' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Grupo' identifier to be null", obj.getId());
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
        Assert.assertNotNull("Expected 'Grupo' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void GrupoIntegrationTest.testRemove() {
        Grupo obj = dod.getRandomGrupo();
        Assert.assertNotNull("Data on demand for 'Grupo' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Grupo' failed to provide an identifier", id);
        obj = Grupo.findGrupo(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'Grupo' with identifier '" + id + "'", Grupo.findGrupo(id));
    }
    
}
