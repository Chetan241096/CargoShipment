package com.controller;

import java.lang.annotation.Annotation;
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

import com.Dao.CoverSpecificationDao;
import com.Vo.CoverSpecificationVo;
@Controller
public class CoverSpecificationController
{
	@Autowired
	CoverSpecificationDao CoverSpecificationdao;
	
	@RequestMapping(value = "/addCoverSpecification.do", method = RequestMethod.GET)
	public String addCoverSpecification(Model model) 
	{
		model.addAttribute("CoverSpecification", new CoverSpecificationVo());
		return "Admin/addCoverSpecification";
	}

	@RequestMapping(value = "/insertCoverSpecification.do", method = RequestMethod.POST)
	public ModelAndView insertcat(@ModelAttribute CoverSpecificationVo CoverSpecificationvo) 
	{
		CoverSpecificationdao.insertCoverSpecification(CoverSpecificationvo);
		return new ModelAndView("redirect:viewCoverSpecification.do");
	}

	@RequestMapping(value = "/viewCoverSpecification.do", method = RequestMethod.GET)
	public ModelAndView viewCoverSpecification(@ModelAttribute CoverSpecificationVo CoverSpecificationvo,HttpServletRequest request) 
	{
		HttpSession session=request.getSession();
		List ls=new ArrayList();
		ls=CoverSpecificationdao.searchCoverSpecification(CoverSpecificationvo);
		session.setAttribute("List",ls);
		
		return new ModelAndView("Admin/viewCoverSpecification","CoverSpecification",ls);
	}
	@RequestMapping(value = "/deleteCoverSpecification.do", method = RequestMethod.GET)
	public ModelAndView deleteCoverSpecification(@ModelAttribute CoverSpecificationVo CoverSpecificationvo,@RequestParam ("coverSpecificationId") int id) 
	{	
		CoverSpecificationvo.setCoverSpecificationId(id);
		CoverSpecificationdao.deleteCoverSpecification(CoverSpecificationvo);
		return new ModelAndView("redirect:viewCoverSpecification.do");
		
	}
	@RequestMapping(value = "/editCoverSpecification.do", method = RequestMethod.GET)
	public ModelAndView editCoverSpecification(Model model,@RequestParam ("coverSpecificationId") int id)
	{
		CoverSpecificationVo CoverSpecificationvo=new CoverSpecificationVo();
		CoverSpecificationvo.setCoverSpecificationId(id);
		List ls=this.CoverSpecificationdao.editCoverSpecification(CoverSpecificationvo);
		model.addAttribute("CoverSpecification",(CoverSpecificationVo)ls.get(0));
		return new ModelAndView("Admin/editCoverSpecification");
	}
	@RequestMapping(value = "/updateCoverSpecification.do", method = RequestMethod.GET)
	public ModelAndView updateCoverSpecification(@RequestParam ("coverSpecificationId") int id,@ModelAttribute CoverSpecificationVo CoverSpecificationvo)
	{	
		CoverSpecificationvo.setCoverSpecificationId(id);
		CoverSpecificationdao.updateCoverSpecification(CoverSpecificationvo);
		return new ModelAndView("redirect:viewCoverSpecification.do");
		
	}

}

