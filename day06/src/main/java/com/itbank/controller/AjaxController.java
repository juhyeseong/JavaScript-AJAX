package com.itbank.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.MemberDTO;
import com.itbank.service.MemberService;

@RestController
public class AjaxController {
	@Autowired private MemberService service;
	
	@GetMapping("/dupCheck/{userId}")
	public int dupCheck(@PathVariable("userId") String userId) {
		int row = service.dupCheck(userId);
		
		return row;
	}
	
	@GetMapping("/sendAuthNumber/{email}/")
	public HashMap<String, Object> sendAuthNumber(@PathVariable("email") String email, HttpSession session) throws IOException {
		int row = service.sendAuthNumber(email);
		
		if(row != 0) {
			session.setAttribute("authNumber", row);
			session.setMaxInactiveInterval(180);
		}
		HashMap<String, Object> result = new HashMap<String, Object>();
		
		result.put("success", row > 0 ? 1 : 0);
		result.put("message", row > 0 ? "메일이 발송되었습니다 ~ " : "메일 전송에 실패했습니다 ~ ");
		
		return result;
	}
	
	@GetMapping("/checkAuthNumber/{authNumber}")
	public int checkAuthNumber(@PathVariable("authNumber") int authNumber, HttpSession session) {
		int sessionNumber = (int)session.getAttribute("authNumber");
		
		session.setMaxInactiveInterval(1800);
		
		return authNumber == sessionNumber ? 1 : 0;
	}
	
	@PostMapping("/checkAuthNumber/{authNumber}")
	public int checkAuthNumber(@PathVariable("authNumber") int authNumber, HttpSession session, @RequestBody MemberDTO dto) {
		int sessionNumber = (int)session.getAttribute("authNumber");
		
		session.setMaxInactiveInterval(1800);
		
		if(authNumber == sessionNumber && dto != null) {
			session.setAttribute("login", dto);
		}
		
		return authNumber == sessionNumber ? 1 : 0;
	}
	
	@PostMapping("/login")
	public MemberDTO login(@RequestBody MemberDTO dto, HttpSession session, HttpServletResponse response, HttpServletRequest request) throws IOException, ServletException {
		MemberDTO login = service.login(dto);
		System.out.println("login = " + login);
		
		if(login != null) {
			int number = service.sendAuthNumber(login.getEmail());
			
			session.setAttribute("authNumber", number);
			login.setUserPw(null);
		}
		
		return login;
	}
}
