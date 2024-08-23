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
import com.Dao.SubCategoryDao;
import com.Vo.CategoryVo;
import com.Vo.subCategoryVo;
@Controller
public class SubCategoryController 
{

	@Autowired
	CategoryDao categorydao;
	@Autowired
	SubCategoryDao subcategorydao;
	
	
	@RequestMapping(value="/addsubCategory.do", method=RequestMethod.GET)
	public ModelAndView addsubCategory(Model model)
	{
		CategoryVo categoryVo = new CategoryVo();
		List ls=this.categorydao.searchcategory(categoryVo);
		model.addAttribute("categoryList",ls);
		model.addAttribute("subCategory",new subCategoryVo());
		return new ModelAndView("Admin/addsubCategory");
	}
	@RequestMapping(value="/insertSubCategory.do",method=RequestMethod.POST)
	public ModelAndView insertsubCategory(@ModelAttribute subCategoryVo subcategoryvo)
	{	
		
		this.subcategorydao.insertsubcategory(subcategoryvo);
		return new ModelAndView("redirect:viewsubCategory.do");	
	}
	@RequestMapping(value="/viewsubCategory.do",method=RequestMethod.GET)
	public ModelAndView viewsubCategory(@ModelAttribute subCategoryVo subcategoryvo,HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		List ls=subcategorydao.searchsubcategory(subcategoryvo);
		session.setAttribute("List",ls);
		return new ModelAndView("Admin/viewSubCategory","subcategory",ls);
		
	}
	@RequestMapping(value="/deletesubCategory.do",method=RequestMethod.GET)
	public ModelAndView deletesubCategory(@ModelAttribute subCategoryVo subcategoryvo,@RequestParam ("subCategoryId") int id)
	{	
		subcategoryvo.setSubCategoryId(id);
		this.subcategorydao.deletesubcategory(subcategoryvo);
		return new ModelAndView("redirect:viewsubCategory.do");
	}
	@RequestMapping(value="/editsubCategory.do",method=RequestMethod.GET)
	public String editsubCategory(Model model,HttpServletRequest request,@ModelAttribute subCategoryVo subcategoryvo)
	{
		CategoryVo categoryVo = new CategoryVo();
		List ls=this.categorydao.searchcategory(categoryVo);
		model.addAttribute("categoryList",ls);
		HttpSession session=request.getSession();
		List ls1=this.subcategorydao.editsubcateogory(subcategoryvo);
		model.addAttribute("subcategory",(subCategoryVo)ls1.get(0));
		return "Admin/editsubCategory";
	}
	@RequestMapping(value="/updatesubCategory.do",method=RequestMethod.GET)
	public ModelAndView updatesubCategory(@ModelAttribute subCategoryVo subcategoryvo,@RequestParam ("subCategoryId") int id)
	{
		subcategoryvo.setSubCategoryId(id);
		this.subcategorydao.updatesubcategory(subcategoryvo);
		return new ModelAndView("redirect:viewsubCategory.do");
		
	}
}
