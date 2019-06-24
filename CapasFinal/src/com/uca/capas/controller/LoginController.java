package com.uca.capas.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	
	
	@RequestMapping(value = "/")
	public ModelAndView main() {
		ModelAndView mav= new ModelAndView();
		mav.setViewName("login");
		
		return mav;
	}
	
	@RequestMapping(value= "/inicio", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam(name = "username") String username, @RequestParam(name = "password") String password) {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("lista_sucursales");

		return mav;
	}
	
}