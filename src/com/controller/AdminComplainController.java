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

import com.Dao.ComplainDao;
import com.Vo.ComplainVo;
import com.sun.javafx.sg.prism.NGShape.Mode;

@Controller
public class AdminComplainController {
	@Autowired
	ComplainDao complainDao;
	
	@RequestMapping(value="/viewComplain.do",method=RequestMethod.GET)
	public ModelAndView complain(@ModelAttribute ComplainVo complainVo,HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		List ls=complainDao.viewComplain(complainVo);
		session.setAttribute("List",ls);
		return new ModelAndView("Admin/viewComplain","complain",ls);
	}
	
	@RequestMapping(value="/replyComplain.do",method=RequestMethod.GET)
	public ModelAndView replyComplain(@RequestParam int complainId)
	{
		ComplainVo complainVo = new ComplainVo();
		complainVo.setComplainId(complainId); 
		
		List<ComplainVo> ls=complainDao.editComplain(complainVo);
		
		return new ModelAndView("Admin/replyComplain","complain",(ComplainVo)ls.get(0));
	}
	
	@RequestMapping(value="/insertReply.do",method=RequestMethod.POST)
	public ModelAndView insertreply(@ModelAttribute ComplainVo complainVo,@RequestParam ("complainId") int id,@RequestParam ("complainReplyDescription") String reply)
	{
		complainVo.setComplainId(id);
		complainDao.replyComplain(complainVo);
		System.out.println(id+reply);
		return new ModelAndView("redirect:viewComplain.do");
	}
}

