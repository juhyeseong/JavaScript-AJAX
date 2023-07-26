package com.itbank.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.itbank.model.YoutubeDTO;

@Repository
public interface Ex03DAO {
	List<YoutubeDTO> selectAll();

	String selectIframe(String title);
}
