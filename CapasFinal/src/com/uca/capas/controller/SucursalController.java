package com.uca.capas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SucursalController {
	

	
	@RequestMapping("/all") 
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView("lista_sucursales");
		
		return mav;
	}
	
}