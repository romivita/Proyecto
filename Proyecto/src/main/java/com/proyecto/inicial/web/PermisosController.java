package com.proyecto.inicial.web;
import com.proyecto.inicial.domain.Permisos;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/permisoses")
@Controller
@RooWebScaffold(path = "permisoses", formBackingObject = Permisos.class)
public class PermisosController {
}
