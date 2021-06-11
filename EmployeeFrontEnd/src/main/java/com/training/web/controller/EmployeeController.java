package com.training.web.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.training.web.client.RestClient;
import com.training.web.model.Employee;

@Controller
public class EmployeeController {

	@RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
	public String update(@PathVariable("id") int id, @ModelAttribute("employeeModel") Employee employeeModel) {

		RestClient.updateEmployeeClient("/employee/" + id, "put", employeeModel);

		return "redirect:/employee";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public ModelAndView updateGet(@PathVariable("id") int id) {

		ModelAndView model = new ModelAndView("update");
		Employee e = RestClient.getEmployee("/employee/" + id, "get");
		System.out.println("Employee returned by Id: " + e);
		model.addObject("employee", e);
		return model;
	}

	@RequestMapping(value = "/employee", method = RequestMethod.GET)
	public ModelAndView getEmployees() {
		List<Employee> employees = RestClient.getEmployeeClient("/employee", "get");

		ModelAndView model = new ModelAndView("employee");
		model.addObject("employees", employees);

		return model;
	}
}
