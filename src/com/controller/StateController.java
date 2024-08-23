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

import com.Dao.CountryDao;
import com.Dao.StateDao;
import com.Vo.CountryVo;
import com.Vo.StateVo;

@Controller
public class StateController
{
	@Autowired
	CountryDao countrydao;
	@Autowired
	StateDao statedao;
	
	
	@RequestMapping(value="/addState.do", method=RequestMethod.GET)
	public ModelAndView addstate(Model model)
	{
		CountryVo countryVo = new CountryVo();
		List ls=this.countrydao.searchcountry(countryVo);
		model.addAttribute("countryList",ls);
		model.addAttribute("state",new StateVo());
		return new ModelAndView("Admin/addState");
	}
	@RequestMapping(value="/insertState.do",method=RequestMethod.POST)
	public ModelAndView insertstate(@ModelAttribute StateVo statevo)
	{	
		
		this.statedao.insertstate(statevo);
		return new ModelAndView("redirect:viewState.do");	
	}
	@RequestMapping(value="/viewState.do",method=RequestMethod.GET)
	public ModelAndView viewstate(@ModelAttribute StateVo statevo,HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		List ls=statedao.searchstate(statevo);
		session.setAttribute("List",ls);
		return new ModelAndView("Admin/viewState","state",ls);
		
	}
	@RequestMapping(value="/deletestate.do",method=RequestMethod.GET)
	public ModelAndView deletestate(@ModelAttribute StateVo statevo,@RequestParam ("stateId") int id)
	{	
		statevo.setStateId(id);
		this.statedao.deletestate(statevo);
		return new ModelAndView("redirect:viewState.do");
	}
	@RequestMapping(value="/editstate.do",method=RequestMethod.GET)
	public String editstate(Model model,HttpServletRequest request,@ModelAttribute StateVo statevo)
	{
		CountryVo countryVo = new CountryVo();
		List ls=this.countrydao.searchcountry(countryVo);
		model.addAttribute("countryList",ls);
		HttpSession session=request.getSession();
		List ls1=this.statedao.editstate(statevo);
		model.addAttribute("state",(StateVo)ls1.get(0));
		return "Admin/editState";
	}
	@RequestMapping(value="/updatestate.do",method=RequestMethod.GET)
	public ModelAndView updatestate(@ModelAttribute StateVo statevo,@RequestParam ("stateId") int id)
	{
		statevo.setStateId(id);
		this.statedao.updatestate(statevo);
		return new ModelAndView("redirect:viewState.do");
		
	}
}

