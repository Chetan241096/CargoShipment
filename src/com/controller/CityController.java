package com.controller;

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

import com.Dao.CityDao;
import com.Dao.CountryDao;
import com.Dao.StateDao;
import com.Vo.CityVo;
import com.Vo.CountryVo;
import com.Vo.StateVo;

@Controller
public class CityController {
	
@Autowired
CityDao citydao;
@Autowired
StateDao statedao;
@Autowired
CountryDao countrydao;

			@RequestMapping(value="/addCity.do",method=RequestMethod.GET)
			public ModelAndView addcity(Model model)
			{
				CountryVo countryvo=new CountryVo();
				List ls=this.countrydao.searchcountry(countryvo);
				model.addAttribute("countryList",ls);
				StateVo statevo = new StateVo();
				List ls1=this.statedao.searchstate(statevo);
				model.addAttribute("stateList",ls1);
				model.addAttribute("city",new CityVo());
				return new ModelAndView("Admin/addCity"); 
			}
			@RequestMapping(value="/insertCity.do",method=RequestMethod.POST)
			public ModelAndView insertcity(@ModelAttribute CityVo cityvo)
			{
				this.citydao.insertcity(cityvo);
				return new ModelAndView("redirect:viewCity.do");
			}
			@RequestMapping(value="/viewCity.do",method=RequestMethod.GET)
			public ModelAndView viewcity(@ModelAttribute CityVo cityvo,HttpServletRequest request)
			{
				HttpSession session=request.getSession();
				List ls=this.citydao.searchcity(cityvo);
				session.setAttribute("List",ls);
				return new ModelAndView("Admin/viewCity");
			}
			@RequestMapping(value="/deleteCity.do",method=RequestMethod.GET)
			public ModelAndView deletecity(@ModelAttribute CityVo cityvo,@RequestParam ("cityId") int id)
			{
				cityvo.setCityId(id);
				this.citydao.deletecity(cityvo);
				return new ModelAndView("redirect:viewCity.do");
			}
			@RequestMapping(value="/editCity.do",method=RequestMethod.GET)
			public ModelAndView editcity(Model model,@ModelAttribute CityVo cityvo,HttpServletRequest request)
			{	
				HttpSession session=request.getSession();
				CountryVo countryvo=new CountryVo();
				List ls=this.countrydao.searchcountry(countryvo);
				model.addAttribute("countryList",ls);
				StateVo statevo = new StateVo();
				List ls1=this.statedao.searchstate(statevo);
				model.addAttribute("stateList",ls1);
				List ls2=this.citydao.editcity(cityvo);
				session.setAttribute("List",ls2);
				model.addAttribute("city",(CityVo)ls2.get(0));
				return new ModelAndView("Admin/editCity");
			}
			@RequestMapping(value="/updateCity.do",method=RequestMethod.GET)
			public ModelAndView updatecity(@RequestParam ("cityId") int id,@ModelAttribute CityVo cityvo)
			{
				cityvo.setCityId(id);
				this.citydao.updatecity(cityvo);
				return new ModelAndView("redirect:viewCity.do");
			}
			@RequestMapping(value="/stateAjax.do",method=RequestMethod.GET)
			protected ModelAndView LoadStateAjax(@RequestParam ("countryId") int countryId, HttpServletRequest request,@ModelAttribute CountryVo countryvo,@ModelAttribute StateVo statevo)
			{
				HttpSession session = request.getSession();
			
				//int countryId=Integer.parseInt(request.getParameter("countryId"));
				System.out.println("countryId>>>>>>>>>>>>>>"+countryId);
				countryvo.setCountryId(countryId);
				
				statevo.setCountryvo(countryvo);
				
				List stateList=statedao.SearchCityAjax(statevo);
				
				System.out.println("The Ajax State Item Is"+stateList.size());
				
				session.setAttribute("stateList",stateList);
				
				return new ModelAndView("Admin/json/loadState");
			}
}
