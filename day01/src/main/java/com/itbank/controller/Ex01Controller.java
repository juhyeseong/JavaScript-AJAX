package com.itbank.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/ex01")
public class Ex01Controller {
	@GetMapping
	public void ex01() {}
	
	@GetMapping(value="/whatTime",				
				produces="text/plain;charset=utf-8")	// 함수가 생산하는 값의 형식
//				consumes="text/plain;charset=utf-8")	// 함수가 소비하는 값의 형식
	@ResponseBody
	public String whatTime() {
		// 일반적인 String함수는 forward의 대상이 되는 jsp의 이름을 가리킨다
		// 여기서는 현재 시간을 나타내는 문장을 그대로 응답으로 보내기 때문에
		// 추가 어노테이션이 필요하다 => @ResponseBody
		// 이 함수가 변환하는 그 내용 자체가 응답이다(포워드하지 않는다)
		SimpleDateFormat sdf = new SimpleDateFormat("hh시mm분");
		String time = sdf.format(new Date());
		String msg = String.format("지금 지간은 %s 입니다", time);
		
		return msg;
	}
}
