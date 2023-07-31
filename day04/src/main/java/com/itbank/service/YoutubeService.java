package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.YoutubeDTO;
import com.itbank.repository.YoutubeDAO;

@Service
public class YoutubeService {
	@Autowired private YoutubeDAO dao;

	public List<YoutubeDTO> selectAll() {
		return dao.selectAll();
	}

	public String selectIframe(int idx) {
		return dao.selectIframe(idx);
	}

	public int add(YoutubeDTO dto) {
		return dao.insertYoutube(dto);
	}

	public int deleteYoutube(int idx) {
		return dao.deleteYoutube(idx);
	}
}
