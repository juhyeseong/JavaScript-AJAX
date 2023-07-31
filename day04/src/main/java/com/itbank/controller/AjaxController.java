package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.model.YoutubeDTO;
import com.itbank.service.YoutubeService;

@RestController
@CrossOrigin
@RequestMapping("/youtube")
public class AjaxController {
	@Autowired private YoutubeService service;
	
	@GetMapping
	public List<YoutubeDTO> list() {
		List<YoutubeDTO> list = service.selectAll();
		
		return list;
	}
	
	@GetMapping("/{idx}")
	public String getIdx(@PathVariable("idx") int idx) {
		String iframe = service.selectIframe(idx);
		
		return iframe;
	}
	
	@PostMapping
	public int add(@RequestBody YoutubeDTO dto) {
		int row = service.add(dto);
		
		return row;
	}
	
	@DeleteMapping("/{idx}")
	public int deleteYoutube(@PathVariable("idx") int idx) {
		int row = service.deleteYoutube(idx);
		
		return row;
	}
}
