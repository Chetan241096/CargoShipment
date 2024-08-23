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
import com.Dao.LoginDao;
import com.Dao.RegisterDao;
import com.Dao.StateDao;
import com.Vo.CountryVo;
import com.Vo.LoginVo;
import com.Vo.RegisterVo;
import com.Vo.StateVo;
import com.Vo.CityVo;

@Controller
public class RegistrationController {
	
	@Autowired
	LoginDao loginDao;
	@Autowired
	RegisterDao registerDao;
	@Autowired
	CountryDao countryDao;
	@Autowired
	StateDao stateDao;
	@Autowired
	CityDao cityDao;
	
	
	
	@RequestMapping(value="/addRegister.do",method=RequestMethod.GET)
	public String addregister(Model model)
	{	
		CountryVo countryVo=new CountryVo();
		List ls=this.countryDao.searchcountry(countryVo);
		model.addAttribute("countryList",ls);
		StateVo stateVo = new StateVo();
		List ls1=this.stateDao.searchstate(stateVo);
		model.addAttribute("stateList",ls1);
		CityVo cityVo=new CityVo();
		List ls2=this.cityDao.searchcity(cityVo);
		model.addAttribute("cityList",ls2);
		model.addAttribute("register", new RegisterVo());
		return "Login/registration";
	}
	
	
	@RequestMapping(value="/insertRegister.do",method=RequestMethod.POST)
	public ModelAndView insertregister(@ModelAttribute RegisterVo registerVo, @RequestParam("username")String username,@RequestParam("password")String password)
	{
		LoginVo loginVo=new LoginVo();
		loginVo.setUsername(username);
		loginVo.setPassword(password);
		loginVo.setRole("ROLE_USER");
		loginVo.setEnabled("1");
		registerVo.setLoginVo(loginVo);
		this.loginDao.insertlogin(loginVo);
		this.registerDao.insertregister(registerVo);
		return new ModelAndView("Login/login","register",registerVo);
	}
	@RequestMapping(value="/cityAjax.do",method=RequestMethod.GET)
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
		
		return new ModelAndView("Login/json/loadCity");
	}

}
