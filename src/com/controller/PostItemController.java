package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Dao.CategoryDao;
import com.Dao.LoginDao;
import com.Dao.PostItemDao;
import com.Dao.SubCategoryDao;
import com.Vo.CategoryVo;
import com.Vo.CountryVo;
import com.Vo.LoginVo;
import com.Vo.PostItemVo;
import com.Vo.StateVo;
import com.Vo.subCategoryVo;

@Controller
public class PostItemController {
	@Autowired
	CategoryDao categorydao;
	@Autowired
	SubCategoryDao subCategorydao;
	@Autowired
	PostItemDao postitemDao;
	@Autowired
	LoginDao loginDao;
	
	@RequestMapping(value="/postItem.do",method=RequestMethod.GET)
	public String postitem(Model model)
	{	
		
		CategoryVo categoryVo= new CategoryVo();
		List ls=categorydao.searchcategory(categoryVo);
		model.addAttribute("categoryList",ls);
		
		subCategoryVo subcategoryvo=new subCategoryVo();
		List ls1=subCategorydao.searchsubcategory(subcategoryvo);
		model.addAttribute("subcategoryList",ls1);
	
				
		model.addAttribute("postitem", new PostItemVo());
		return "User/postitem";
	}
	@RequestMapping(value="/subCategoryAjax.do",method=RequestMethod.GET)
	protected ModelAndView LoadsubCategoryAjax(@RequestParam ("categoryId") int categoryId, HttpServletRequest request,@ModelAttribute CategoryVo categoryVo,@ModelAttribute subCategoryVo subCategoryVo)
	{
		HttpSession session = request.getSession();

		System.out.println("categoryId>>>>>>>>>>>>>>"+categoryId);
		categoryVo.setCategoryId(categoryId);
		
		subCategoryVo.setCategoryVo(categoryVo);
		
		List subCategoryList=subCategorydao.SearchSubCategoryAjax(subCategoryVo);
		
		System.out.println("The Ajax SubCategory Item Is"+subCategoryList.size());
		
		session.setAttribute("subCategoryList",subCategoryList);
		
		return new ModelAndView("User/json/loadSubCategory");
	}
	@RequestMapping(value="/insertPostItem.do",method=RequestMethod.POST)
	public ModelAndView insertpostitem(@ModelAttribute PostItemVo postItemVo)
	{
		User username = BaseMethods.getCurrentuser();
		
		LoginVo loginVo=new LoginVo();
		loginVo.setUsername(username.getUsername());
		
		int LoginId = this.loginDao.getLoginId(loginVo);
		
		loginVo.setId(LoginId);
		postItemVo.setLoginVo(loginVo);
		
		postItemVo.setItemStatus("Active");
		postitemDao.insertpostitem(postItemVo);
		return new ModelAndView("redirect:postItem.do");
	}
	@RequestMapping(value="viewPostItem.do",method=RequestMethod.GET)
	public ModelAndView viewPostItem(@ModelAttribute PostItemVo postItemVo,HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		List ls=postitemDao.searchPostItem(postItemVo);
		session.setAttribute("List", ls);
		return new ModelAndView("Admin/viewPostItem");	
	}
	}
