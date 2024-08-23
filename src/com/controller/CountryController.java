package com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Dao.CountryDao;
import com.Vo.CountryVo;
@Controller
public class CountryController {
	@Autowired
	CountryDao countrydao;
	
	@RequestMapping(value="/addCountry.do",method=RequestMethod.GET)
	public String addcountry(Model model)
	{
		model.addAttribute("country",new CountryVo());
		return "Admin/addCountry";
	}
	@RequestMapping(value = "/insertCountry.do", method = RequestMethod.POST)
	public ModelAndView insertcat(@ModelAttribute CountryVo countryvo) 
	{
		countrydao.insertcountry(countryvo);
		return new ModelAndView("redirect:viewCountry.do");
	}
	@RequestMapping(value = "/viewCountry.do", method = RequestMethod.GET)
	public ModelAndView viewcountry(@ModelAttribute CountryVo countryvo,HttpServletRequest request) 
	{
		HttpSession session=request.getSession();
		List ls=new ArrayList();
		ls=countrydao.searchcountry(countryvo);
		session.setAttribute("List",ls);
		
		return new ModelAndView("Admin/viewCountry","country",ls);
	}
	@RequestMapping(value = "/deleteCountry.do", method = RequestMethod.GET)
	public ModelAndView deletecountry(@ModelAttribute CountryVo countryvo,@RequestParam ("countryId") int id) 
	{	
		countryvo.setCountryId(id);
		countrydao.deletecountry(countryvo);
		return new ModelAndView("redirect:viewCountry.do");
		
	}
	@RequestMapping(value = "/editCountry.do", method = RequestMethod.GET)
	public String editcountry(Model model,@RequestParam ("countryId") int id)
	{
		CountryVo countryvo=new CountryVo();
		countryvo.setCountryId(id);
		List ls=this.countrydao.editcountry(countryvo);
		model.addAttribute("country",(CountryVo)ls.get(0));
		return "Admin/editCountry";
	}
	@RequestMapping(value = "/updateCountry.do", method = RequestMethod.GET)
	public ModelAndView updatecountry(@RequestParam ("countryId") int id,@ModelAttribute CountryVo countryvo)
	{	
		countryvo.setCountryId(id);
		countrydao.updatecountry(countryvo);
		return new ModelAndView("redirect:viewCountry.do");
		
	}

}
