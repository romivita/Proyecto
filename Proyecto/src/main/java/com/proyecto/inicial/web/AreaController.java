package com.proyecto.inicial.web;
import com.proyecto.inicial.domain.Area;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/areas")
@Controller
@RooWebScaffold(path = "areas", formBackingObject = Area.class)
public class AreaController {
}
