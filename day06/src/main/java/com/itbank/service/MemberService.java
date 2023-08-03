package com.itbank.service;

import java.io.IOException;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itbank.mail.MailComponent;
import com.itbank.model.MemberDTO;
import com.itbank.repository.MemberDAO;

@Service
public class MemberService {
	@Autowired private MemberDAO dao;
	@Autowired private MailComponent mailComponent;
	private Random random = new Random();

	public int dupCheck(String userId) {
		return dao.selectCount(userId);
	}

	@Transactional
	public int resetPassword(MemberDTO dto) throws IOException {
		int row = 0;
		int count = 0;
		
		count += dao.selectCount(dto.getUserId());
		System.out.println("count = " + count);
		
		if(count != 0) {
			String randomChar = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
			String newPassword = "";
			
			for(int i = 0; i < 10; i++) {
				newPassword += randomChar.charAt(random.nextInt(randomChar.length())) + "";
			}
			dto.setUserPw(newPassword);
			String content = "변경된 패스워드 : %s";
			content = String.format(content, newPassword);
			
			row += dao.resetPassword(dto);
			
			if(row != 0) {
				row += mailComponent.sendMail(dto.getEmail(), content);
			}
		}
		
		return row;
	}

	public int join(MemberDTO dto) {
		return dao.insertMember(dto);
	}

	public int sendAuthNumber(String email) throws IOException {
		String content = "<h3>인증번호는 [%s]입니다</h3>";
		int authNumber = random.nextInt(89999999) + 10000000;
		int row = 0;
		
		content = String.format(content, authNumber);
		row = mailComponent.sendMail(email, content);
		// 메일을 정상적으로 보냈을 경우에만, 인증번호를 반환하여 세션에 저장하도록 한다
		return row > 0 ? authNumber : row;
	}

	public MemberDTO login(MemberDTO dto) {
		return dao.login(dto);
	}
}
