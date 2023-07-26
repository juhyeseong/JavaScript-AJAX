package com.itbank.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.itbank.model.Kid;
import com.itbank.service.Ex03Service;

@RestController		// 이 컨트롤러 하위의 모든 메서드는 @RequestBody를 자동으로 적용한다
// @CrossOrigin		// 다른 출처에서 현재 데이터를 가져가는 것을 허락하는 어노테이션
public class AjaxController {
	// @ResponseBody : 함수가 반환하는 내용 그 자체가 응답이다(추가하거나 뺄 필요가 없다, 포워딩하지 않는다)
	// @RequestBody : 함수가 받는 매개변수에 특정 형식을 지정하지 않고, 그대로 파라미터로 활용한다
	
	@Autowired private Ex03Service service;
	
	@GetMapping("/zzanggu")
	public List<Kid> zzanggu() throws JsonProcessingException {
		ArrayList<Kid> list = new ArrayList<Kid>();
		
		list.add(new Kid("짱구", "짱구.png"));
		list.add(new Kid("수지", "수지.png"));
		list.add(new Kid("유리", "유리.png"));
		list.add(new Kid("짱아", "짱아.png"));
		list.add(new Kid("철수", "철수.png"));
		list.add(new Kid("흰둥이", "흰둥이.png"));
		
		// 자바 객체를 자바스크립트 JSON형식의 문자열로 변환하는 과정
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writeValueAsString(list);
		System.out.println(json);
		
		return list;
	}
	
	@PostMapping("/selectOne")
	public String selectOne(@RequestBody HashMap<String, String> title) {
		System.out.println(title);
		String resp = service.selectIframe(title.get("title"));
		System.out.println(resp);
		return resp;
	}
}
