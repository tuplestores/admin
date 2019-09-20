package com.tuplestores.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.tuplestores.admin.model.ApiResponse;
import com.tuplestores.admin.model.Driver;
import com.tuplestores.admin.model.User;
import com.tuplestores.admin.service.AuthenticationService;



@Controller
@SessionAttributes("user")
public class AdminController {
	//
	@Autowired
	AuthenticationService authenticationService;
	
	String message = "Welcome to Spring MVC!";
	 
	@RequestMapping("/dashboard")
	public ModelAndView showMessage() {
		System.out.println("in controller");
 
		ModelAndView mv = new ModelAndView("dashboard");
		//mv.addObject("message", message);
		//mv.addObject("name", name);
		return mv;
	}
	
	@RequestMapping("/addvehicle")
	public ModelAndView addvehicle() {
		System.out.println("in controller");
 
		ModelAndView mv = new ModelAndView("addvehicle");
		//mv.addObject("message", message);
		//mv.addObject("name", name);
		return mv;
	}
	
	
	@RequestMapping("/adddriver")
	public ModelAndView adddriver() {
		System.out.println("in controller");
 
		ModelAndView mv = new ModelAndView("adddriver");
		//mv.addObject("message", message);
		//mv.addObject("name", name);
		return mv;
	}
	

	
	@RequestMapping("/drivers")
	public ModelAndView drivers(@ModelAttribute User user) {
		System.out.println("in controller");
 
		ModelAndView mv = new ModelAndView();
		mv.addObject("user", user);
		mv.setViewName("drivers");
		return mv;
	}
	
	@RequestMapping("/vehicles")
	public ModelAndView vehicles(@ModelAttribute User user) {
		System.out.println("in controller");
 
		ModelAndView mv = new ModelAndView();
		mv.addObject("user", user);
		mv.setViewName("vehicles");
		return mv;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam("username") String username, @RequestParam("password") String password) {

		ModelAndView mv = new ModelAndView();

		if (username != null && password!=null) {
			
			User user = authenticationService.SignIn(username, password);
			
			if(user!=null) {
				
				 mv.addObject("user", user);
				 mv.setViewName("dashboard");
			}
			else {
				
				mv.addObject("msg", "Invalid user id or password.");
				mv.setViewName("login");
				
			}
			
		 }

			

		return mv;

	}
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {

		//ModelAndView mv = new ModelAndView();
		
		ModelAndView mv = new ModelAndView("login");
		//mv.addObject("message", message);
		//mv.addObject("name", name);
		return mv;

	}
	
	
	
	@RequestMapping(value = "/getdriverlist", method = RequestMethod.GET)
	@ResponseBody public List<Driver> getdriverlist(@RequestParam String i_tenant_id) {

		List<Driver> lstDrivers = null;

		try {
			lstDrivers = authenticationService.getdriverlist(i_tenant_id);

		} catch (Exception e) {

			e.printStackTrace();
		}
		return lstDrivers;

	}
	
	@RequestMapping(value = "/addDrivers", method = RequestMethod.GET)
	public @ResponseBody Object addDrivers( @RequestParam String i_tenant_id,
													@RequestParam String i_email,
													@RequestParam String i_first_name,
													@RequestParam String i_last_name,
													@RequestParam String i_isd_code,
													@RequestParam String i_mobile,
													@RequestParam String i_invite_code
													)   {
		
		HttpHeaders httpHeaders = new HttpHeaders();
		ApiResponse api = null;
		try {
			 api=authenticationService.addDriver(i_tenant_id, i_email, i_first_name, i_last_name,
					 i_isd_code, i_mobile, i_invite_code);
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		return new ResponseEntity<ApiResponse>(api,httpHeaders,HttpStatus.OK);
	}
	
	
	@RequestMapping("/showUpdateDriver")
	public ModelAndView showUpdateDriver(@ModelAttribute User user) {
		System.out.println("in controller showUpdateDriver");
 
		ModelAndView mv = new ModelAndView();
		mv.addObject("user", user);
		mv.setViewName("updatedriver");
		return mv;
	}

}
