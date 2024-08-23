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
import com.Dao.CityDao;
import com.Dao.CountryDao;
import com.Dao.LoginDao;
import com.Dao.PostItemDao;
import com.Dao.StateDao;
import com.Dao.SubCategoryDao;
import com.Vo.CategoryVo;
import com.Vo.CityVo;
import com.Vo.CountryVo;
import com.Vo.LoginVo;
import com.Vo.PostItemVo;
import com.Vo.RequestCertificateVo;
import com.Vo.StateVo;
import com.Vo.subCategoryVo;

@Controller

public class RequestCertificateController {
	
	@Autowired
	PostItemDao postitemDao;
	@Autowired
	CountryDao countryDao;
	@Autowired
	StateDao stateDao;
	@Autowired
	CityDao cityDao;
	@Autowired
	LoginDao loginDao;
	@Autowired
	CategoryDao categoryDao;
	@Autowired
	SubCategoryDao subCategoryDao;
	
	@RequestMapping(value="/requestCertificate.do",method=RequestMethod.GET)
	public ModelAndView requestcertificate(@ModelAttribute PostItemVo postItemVo,Model model)
	{	
		User username = BaseMethods.getCurrentuser();
		LoginVo loginVo=new LoginVo();
		loginVo.setUsername(username.getUsername());
		int LoginId=this.loginDao.getLoginId(loginVo);
		loginVo.setId(LoginId);
		postItemVo.setLoginVo(loginVo);
		List ls3=postitemDao.editPostItem(postItemVo);
		model.addAttribute("postitem",ls3);
		CategoryVo categoryVo= new CategoryVo();
		List ls4=categoryDao.searchcategory(categoryVo);
		model.addAttribute("categoryList",ls4);
		
		subCategoryVo subcategoryvo=new subCategoryVo();
		List ls5=subCategoryDao.searchsubcategory(subcategoryvo);
		model.addAttribute("subcategoryList",ls5);
	
		CountryVo countryVo=new CountryVo();
		List ls=this.countryDao.searchcountry(countryVo);
		model.addAttribute("countryList",ls);
		StateVo stateVo = new StateVo();
		List ls1=this.stateDao.searchstate(stateVo);
		model.addAttribute("stateList",ls1);
		CityVo cityVo=new CityVo();
		List ls2=this.cityDao.searchcity(cityVo);
		model.addAttribute("cityList",ls2);
		return new ModelAndView("User/requestcertificate","certificate",new RequestCertificateVo());
	}
	@RequestMapping(value="/statecertificateAjax.do",method=RequestMethod.GET)
	protected ModelAndView LoadStateAjax(@RequestParam ("countryId") int countryId, HttpServletRequest request,@ModelAttribute CountryVo countryvo,@ModelAttribute StateVo statevo)
	{
		HttpSession session = request.getSession();
	
		//int countryId=Integer.parseInt(request.getParameter("countryId"));
		System.out.println("countryId>>>>>>>>>>>>>>"+countryId);
		countryvo.setCountryId(countryId);
		
		statevo.setCountryvo(countryvo);
		
		List stateList=stateDao.SearchCityAjax(statevo);
		
		System.out.println("The Ajax State Item Is"+stateList.size());
		
		session.setAttribute("stateList",stateList);
		
		return new ModelAndView("User/json/loadState");
	}
	@RequestMapping(value="/citycertificateAjax.do",method=RequestMethod.GET)
	protected ModelAndView LoadCityAjax(@RequestParam ("stateId") int stateId, HttpServletRequest request,@ModelAttribute StateVo statevo,@ModelAttribute CityVo cityVo)
	{
		HttpSession session = request.getSession();
	
		System.out.println("stateId>>>>>>>>>>>>>>"+stateId);
		//countryvo.setCountryId(countryId);
		statevo.setStateId(stateId);
		//statevo.setCountryvo(countryvo);
		cityVo.setStatevo(statevo);
		List cityList=cityDao.SearchCityAjax2(cityVo);
		
		System.out.println("The Ajax City Item Is"+cityList.size());
		session.setAttribute("cityList",cityList);
		
		return new ModelAndView("User/json/loadCity");
	}

												
}
