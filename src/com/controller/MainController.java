package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@RequestMapping(value= "/login.do",method=RequestMethod.GET)
	public String IndexLoader() 
	{
		return "Login/login";
	}
	@RequestMapping(value= "/loginerror.do",method=RequestMethod.GET)
	public String error() 
	{
		return "Login/login";
	}
	@RequestMapping(value= "/admin.do",method=RequestMethod.GET)
	public String admin() 
	{
		return "Admin/index";
	}
	@RequestMapping(value= "/user.do",method=RequestMethod.GET)
	public String user() 
	{
		return "User/index";
	}
	@RequestMapping(value= "/company.do",method=RequestMethod.GET)
	public String company() 
	{
		return "Company/login";
	}
	
	
}
