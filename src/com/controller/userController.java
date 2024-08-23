package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class userController {
	
	@RequestMapping(value="/index1.do",method=RequestMethod.POST)
	public ModelAndView index()
	{
		return new ModelAndView("User/index");
		
	}
	@RequestMapping(value="/contact.do",method=RequestMethod.GET)
	public ModelAndView contact()
	{
		return new ModelAndView("User/contact");
		
	}
	@RequestMapping(value="/shipping-cart.do",method=RequestMethod.GET)
	public ModelAndView shippingcart()
	{
		return new ModelAndView("User/shipping-cart");
		
	}
	@RequestMapping(value="/checkout.do",method=RequestMethod.GET)
	public ModelAndView checkout()
	{
		return new ModelAndView("User/checkout");
		
	}

}
