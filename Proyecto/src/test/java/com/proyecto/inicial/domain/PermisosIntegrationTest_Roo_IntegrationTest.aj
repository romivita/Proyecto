// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.proyecto.inicial.domain;

import com.proyecto.inicial.domain.Permisos;
import com.proyecto.inicial.domain.PermisosDataOnDemand;
import com.proyecto.inicial.domain.PermisosIntegrationTest;
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

privileged aspect PermisosIntegrationTest_Roo_IntegrationTest {
    
    declare @type: PermisosIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: PermisosIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: PermisosIntegrationTest: @Transactional;
    
    @Autowired
    PermisosDataOnDemand PermisosIntegrationTest.dod;
    
    @Test
    public void PermisosIntegrationTest.testCountPermisoses() {
        Assert.assertNotNull("Data on demand for 'Permisos' failed to initialize correctly", dod.getRandomPermisos());
        long count = Permisos.countPermisoses();
        Assert.assertTrue("Counter for 'Permisos' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void PermisosIntegrationTest.testFindPermisos() {
        Permisos obj = dod.getRandomPermisos();
        Assert.assertNotNull("Data on demand for 'Permisos' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Permisos' failed to provide an identifier", id);
        obj = Permisos.findPermisos(id);
        Assert.assertNotNull("Find method for 'Permisos' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Permisos' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void PermisosIntegrationTest.testFindAllPermisoses() {
        Assert.assertNotNull("Data on demand for 'Permisos' failed to initialize correctly", dod.getRandomPermisos());
        long count = Permisos.countPermisoses();
        Assert.assertTrue("Too expensive to perform a find all test for 'Permisos', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Permisos> result = Permisos.findAllPermisoses();
        Assert.assertNotNull("Find all method for 'Permisos' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Permisos' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void PermisosIntegrationTest.testFindPermisosEntries() {
        Assert.assertNotNull("Data on demand for 'Permisos' failed to initialize correctly", dod.getRandomPermisos());
        long count = Permisos.countPermisoses();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Permisos> result = Permisos.findPermisosEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'Permisos' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Permisos' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void PermisosIntegrationTest.testFlush() {
        Permisos obj = dod.getRandomPermisos();
        Assert.assertNotNull("Data on demand for 'Permisos' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Permisos' failed to provide an identifier", id);
        obj = Permisos.findPermisos(id);
        Assert.assertNotNull("Find method for 'Permisos' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyPermisos(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'Permisos' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void PermisosIntegrationTest.testMergeUpdate() {
        Permisos obj = dod.getRandomPermisos();
        Assert.assertNotNull("Data on demand for 'Permisos' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Permisos' failed to provide an identifier", id);
        obj = Permisos.findPermisos(id);
        boolean modified =  dod.modifyPermisos(obj);
        Integer currentVersion = obj.getVersion();
        Permisos merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'Permisos' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void PermisosIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'Permisos' failed to initialize correctly", dod.getRandomPermisos());
        Permisos obj = dod.getNewTransientPermisos(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Permisos' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Permisos' identifier to be null", obj.getId());
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
        Assert.assertNotNull("Expected 'Permisos' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void PermisosIntegrationTest.testRemove() {
        Permisos obj = dod.getRandomPermisos();
        Assert.assertNotNull("Data on demand for 'Permisos' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Permisos' failed to provide an identifier", id);
        obj = Permisos.findPermisos(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'Permisos' with identifier '" + id + "'", Permisos.findPermisos(id));
    }
    
}
