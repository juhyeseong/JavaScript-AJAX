package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.YoutubeDTO;
import com.itbank.service.Ex03Service;

@Controller
public class Ex03Controller {
	@Autowired private Ex03Service service;
	
	@GetMapping("/ex03")
	public ModelAndView ex03() {
		ModelAndView mav = new ModelAndView();
		List<YoutubeDTO> list = service.selectAll();
		
		mav.addObject("list", list);
		
		return mav;
	}
}
