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

import com.Dao.CategoryDao;
import com.Vo.CategoryVo;

@Controller
public class CategoryController
{
	@Autowired
	CategoryDao categorydao;
	
	@RequestMapping(value = "/addCategory.do", method = RequestMethod.GET)
	public String addcategory(Model model) 
	{
		model.addAttribute("category", new CategoryVo());
		return "Admin/addCategory";
	}

	@RequestMapping(value = "/insertCategory.do", method = RequestMethod.GET)
	public ModelAndView insertcat(@ModelAttribute CategoryVo categoryvo) 
	{
		categorydao.insertcategory(categoryvo);
		return new ModelAndView("redirect:viewCategory.do");
	}

	@RequestMapping(value = "/viewCategory.do", method = RequestMethod.GET)
	public ModelAndView viewcategory(@ModelAttribute CategoryVo categoryvo,HttpServletRequest request) 
	{
		HttpSession session=request.getSession();
		List ls=new ArrayList();
		ls=categorydao.searchcategory(categoryvo);
		session.setAttribute("List",ls);
		
		return new ModelAndView("Admin/viewCategory","category",ls);
	}
	@RequestMapping(value = "/deleteCategory.do", method = RequestMethod.GET)
	public ModelAndView deletecategory(@ModelAttribute CategoryVo categoryvo,@RequestParam ("categoryId") int id) 
	{	
		categoryvo.setCategoryId(id);
		categorydao.deletecategory(categoryvo);
		return new ModelAndView("redirect:viewCategory.do");
		
	}
	@RequestMapping(value = "/editCategory.do", method = RequestMethod.GET)
	public String editcategory(Model model,@RequestParam ("categoryId") int id)
	{
		CategoryVo categoryvo=new CategoryVo();
		categoryvo.setCategoryId(id);
		List ls=this.categorydao.editcategory(categoryvo);
		model.addAttribute("category",(CategoryVo)ls.get(0));
		return "Admin/editCategory";
	}
	@RequestMapping(value = "/updateCategory.do", method = RequestMethod.GET)
	public ModelAndView updatecategory(@RequestParam ("categoryId") int id,@ModelAttribute CategoryVo categoryvo)
	{	
		categoryvo.setCategoryId(id);
		categorydao.updatecategory(categoryvo);
		return new ModelAndView("redirect:viewCategory.do");
		
	}

}