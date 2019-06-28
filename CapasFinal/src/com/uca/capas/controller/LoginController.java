package com.uca.capas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.Sucursal;
import com.uca.capas.service.SucursalService;
import com.uca.capas.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	SucursalService sucursalService;
	
	
	@RequestMapping(value = "/")
	public ModelAndView main() {
		ModelAndView mav= new ModelAndView();
		mav.setViewName("login");
		
		return mav;
	}
	
	@RequestMapping(value= "/inicio", method = RequestMethod.POST)
	public ModelAndView inicio(@RequestParam(name = "username") String username, @RequestParam(name = "password") String password) {
		ModelAndView mav = new ModelAndView();
		
		if(userService.inicio(username, password)) {
			mav.setViewName("sucursales");
			List<Sucursal> listSucursal = sucursalService.listAll();
			mav.addObject("listSucursal", listSucursal);
		}else {
			mav.setViewName("login");
			
		}
		
		return mav;
	}
}
	
