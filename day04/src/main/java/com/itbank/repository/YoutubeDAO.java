package com.itbank.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.itbank.model.YoutubeDTO;

@Repository
public interface YoutubeDAO {
	List<YoutubeDTO> selectAll();

	String selectIframe(int idx);

	int insertYoutube(YoutubeDTO dto);

	int deleteYoutube(int idx);
}
