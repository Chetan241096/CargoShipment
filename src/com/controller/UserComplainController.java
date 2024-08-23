package com.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.Dao.ComplainDao;
import com.Vo.ComplainVo;

@Controller
public class UserComplainController {
	
	@Autowired
	ComplainDao complainDao;
	
	@RequestMapping(value="/addcomplain.do",method=RequestMethod.GET)
	public String addcomplain(Model model)
	{
		model.addAttribute("complain",new ComplainVo());
		return "User/complain";
		}
	@RequestMapping(value="/insertcomplain.do",method=RequestMethod.POST)
	public ModelAndView insertcomplain(@ModelAttribute ComplainVo complainVo)
	{		
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		String date = dateFormat.format(new Date());
		complainVo.setComplainDate(date);

		Date date1 = new Date();
		String strDateFormat = "hh:mm:ss a";
		DateFormat dateFormat1 = new SimpleDateFormat(strDateFormat);
		String formattedDate= dateFormat1.format(date1);
		complainVo.setComplainTime(formattedDate);
		complainVo.setComplainStatus("pending");
		complainDao.insertComplain(complainVo);
		return new ModelAndView("redirect:addcomplain.do");
	}
}
