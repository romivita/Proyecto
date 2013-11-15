package com.proyecto.inicial.web;
import com.proyecto.inicial.domain.Grupo;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/grupoes")
@Controller
@RooWebScaffold(path = "grupoes", formBackingObject = Grupo.class)
public class GrupoController {
}
