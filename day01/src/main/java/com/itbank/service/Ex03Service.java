package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.YoutubeDTO;
import com.itbank.repository.Ex03DAO;

@Service
public class Ex03Service {
	@Autowired private Ex03DAO dao;

	public List<YoutubeDTO> selectAll() {
		return dao.selectAll();
	}

	public String selectIframe(String title) {
		return dao.selectIframe(title);
	}
	
	
}
