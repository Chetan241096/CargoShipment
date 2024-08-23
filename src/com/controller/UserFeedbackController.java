package com.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.Dao.FeedbackDao;
import com.Dao.LoginDao;
import com.Vo.FeedbackVo;
import com.Vo.LoginVo;

@Controller
public class UserFeedbackController {
	
	@Autowired
	FeedbackDao feedbackDao;
	@Autowired
	LoginDao loginDao;
	
	@RequestMapping(value="/addfeedback.do",method=RequestMethod.GET)
	public String addfeedback(Model model) 
	{ 
		model.addAttribute("feedback",new FeedbackVo());
		return "User/feedback";
	}
	@RequestMapping(value="/insertfeedback.do",method=RequestMethod.POST)
	public ModelAndView insertfeedback(@ModelAttribute FeedbackVo feedbackVo)
	{
		
		User username = BaseMethods.getCurrentuser();
		
		System.err.println(username.getUsername());
		
	
		LoginVo loginVo=new LoginVo();
		loginVo.setUsername(username.getUsername());
		
		int LoginId = this.loginDao.getLoginId(loginVo);
		
		loginVo.setId(LoginId);
		
		SimpleDateFormat dateFormat=new SimpleDateFormat("dd/MM/yyyy");
		String date=dateFormat.format(new Date());
		feedbackVo.setFeedbackDate(date);
		
		Date date1 = new Date();
		String strDateFormat = "hh:mm:ss a";
		DateFormat dateFormat1 = new SimpleDateFormat(strDateFormat);
		String formattedDate= dateFormat1.format(date1);
		feedbackVo.setFeedbackTime(formattedDate);
		feedbackVo.setLoginVo(loginVo);
		feedbackDao.insertfeedback(feedbackVo);
		return new ModelAndView("redirect:addfeedback.do");
	}
}
