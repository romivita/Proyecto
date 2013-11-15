package com.proyecto.inicial.web;
import com.proyecto.inicial.domain.Sucursal;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/sucursals")
@Controller
@RooWebScaffold(path = "sucursals", formBackingObject = Sucursal.class)
public class SucursalController {
}
