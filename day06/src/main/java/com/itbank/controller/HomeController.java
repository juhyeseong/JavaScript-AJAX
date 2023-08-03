package com.itbank.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.mail.MailComponent;
import com.itbank.model.MemberDTO;
import com.itbank.service.MemberService;

@Controller
public class HomeController {
	@Autowired private MailComponent mailComponent;
	@Autowired private MemberService service;
	
	@GetMapping("/join")
	public void join() {}
	
	@PostMapping("/join")
	public ModelAndView join(MemberDTO dto) {
		ModelAndView mav = new ModelAndView("alert");
		int row = service.join(dto);
		String msg = row != 0 ? "환영합니다 ~ 회원가입이 완료되었습니다 ~ " : "회원가입이 실패하였습니다 ~ 계속 될 경우 관리자에게 문의주세요 ~ ";
		String url = row != 0 ? "/login" : "history.go";
		
		mav.addObject("msg", msg);
		mav.addObject("url", url);
		
		return mav;
	}
	
	@GetMapping("/login")
	public void login() {}
	
	@GetMapping("/resetPassword")
	public void resetPassword() {}
	
	@PostMapping("/resetPassword")
	public ModelAndView resetPassword(MemberDTO dto) throws IOException {
		ModelAndView mav = new ModelAndView("alert");
		int row = service.resetPassword(dto);
		String msg = row > 1 ? "변경된 패스워드가 회원님의 이메일로 전송되었습니다 ~ " : "아이디가 잘못되었거나 이메일이 잘못되었습니다 ~";
		String url = row > 1 ? "/login" : "/resetPassword";
		
		mav.addObject("msg", msg);
		mav.addObject("url", url);
		
		return mav;
	}
	
	@GetMapping("/mailTest")
	public void mailTest() {}
	
	@PostMapping("/mailTest")
	public String mailTest(String email, String content) throws IOException {
		int row = mailComponent.sendMail(email, content);
		
		System.out.println(row);
		
		return "redirect:/mailTest";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/login";
	}
}
