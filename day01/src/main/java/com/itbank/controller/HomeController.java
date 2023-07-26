package com.itbank.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

// static web : 외부환경에 관계없이 응답이 결과가 항상 같은 web
// dynamic web : 외부환경에 따라 응답의 결과가 다른 web

@Controller
public class HomeController {
	@GetMapping("/")			
	public String home() {		
		return "home";			
	}
}
