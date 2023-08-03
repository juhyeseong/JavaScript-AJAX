package com.itbank.repository;

import org.springframework.stereotype.Repository;

import com.itbank.model.MemberDTO;

@Repository
public interface MemberDAO {

	int selectCount(String userId);

	int resetPassword(MemberDTO dto);

	int insertMember(MemberDTO dto);

	MemberDTO login(MemberDTO dto);
}
