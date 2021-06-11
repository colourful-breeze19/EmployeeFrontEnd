package com.training.web.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.training.web.client.RestClient;
import com.training.web.model.Employee;
import com.training.web.model.Login;

@Controller
public class LoginController {
	
	RestClient rs = new RestClient();
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String showLogin()
	{
		return "login";
	}
	

	@RequestMapping(value="/employee", method=RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("loginModel") Login loginModel)
	{
		
		System.out.println("In Controller");
		Login user = RestClient.checkUser("/login", "post", loginModel);
		System.out.println(user.getUserId());
		System.out.println(user.getPassword());
		
		if (user != null)
		{
			
			List<Employee> employees = RestClient.getEmployeeClient("/employee", "get");
			
			ModelAndView model = new ModelAndView("employee");
	        model.addObject("employees", employees);
	        
	        return model;
		}
		else
		{
			ModelAndView model = new ModelAndView("login");
			return model;
			
		}
		
	}	
	
}
