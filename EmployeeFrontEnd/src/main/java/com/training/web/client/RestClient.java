package com.training.web.client;

import java.net.URI;
import java.util.List;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.GenericType;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.UriBuilder;

import org.glassfish.jersey.client.ClientConfig;
import org.springframework.web.client.RestTemplate;

import com.training.web.model.Employee;
import com.training.web.model.Login;

public class RestClient 
{
	
	private static URI getBaseURI()
	{
        return UriBuilder.fromUri("http://localhost:8080/EmployeeRestApi").build();
    }
	
	
	public static Login checkUser(String url, String method, Login login) 
	{
        RestTemplate restTemplate = new RestTemplate();
        Login user = restTemplate.postForObject(getBaseURI()+url, login, Login.class);
        return user;
    }
	
	
	public static Employee saveEmployeeClient(String url, String method, Employee employee) 
	{
        RestTemplate restTemplate = new RestTemplate();
        Employee emp = restTemplate.postForObject(getBaseURI()+url, employee, Employee.class);
        return emp;
    }
	 
	
	   public static List<Employee> getEmployeeClient(String url, String method) 
	   {
	        ClientConfig config = new ClientConfig();
	        Client client = ClientBuilder.newClient(config);
	        WebTarget target = client.target(getBaseURI());

	        List<Employee> e = target.path(url).
	        				   request().
	        				   accept(MediaType.APPLICATION_JSON)
	        				   .get()
	                           .readEntity(new GenericType<List<Employee>>() {
	                         });

	        System.out.println(e);
	        return e;
     } 
	   
	   
	   public static void updateEmployeeClient(String url, String method, Employee employee)
	   {
	        RestTemplate restTemplate = new RestTemplate();
	        restTemplate.put(getBaseURI()+url, employee);
	       
	    }
	   
	   public static Employee getEmployee(String url, String method)
	   {
	        RestTemplate restTemplate = new RestTemplate();
	        Employee e = restTemplate.getForObject(getBaseURI()+url, Employee.class);
	        return e;
	       
	    }
	   
	    public static void deleteEmployeeClient(String url, String method) 
	    {
	        RestTemplate restTemplate = new RestTemplate();
	        restTemplate.delete(getBaseURI()+url);
	    }
	 
	 
}