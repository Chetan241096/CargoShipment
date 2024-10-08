package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.Dao.FeedbackDao;
import com.Vo.FeedbackVo;

@Controller
public class AdminFeedbackController {
	@Autowired
	FeedbackDao feedbackDao;
	
	@RequestMapping(value="/viewFeedback.do",method=RequestMethod.GET)
	public ModelAndView viewcomplain(@ModelAttribute FeedbackVo feedbackVo,HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		List ls=feedbackDao.viewfeedback(feedbackVo);
		session.setAttribute("List", ls);
		return new ModelAndView("Admin/viewFeedback","feedback",ls);
	}
}
