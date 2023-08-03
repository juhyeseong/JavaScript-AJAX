<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
	<div class="main">
		<fieldset>
			<legend>패스워드 재설정</legend>
		
			<form method="POST">
				<p><input type="text" name="userId" placeholder="아이디" required></p>
				<p><input type="email" name="email" placeholder="이메일" required></p>
				<p><input type="submit" value="재설정"></p>
			</form>
		</fieldset>
	</div>
	
	<fieldset>
		<ol>
			<li>계정과 이메일을 입력받는다</li>
			<li>입력받은 이메일과 계정이 일치하는 계정이 있으면 랜덤 문자열로 패스워드를 재설정한다(update)</li>
			<li>패스워드 update의 결과가 1이면, 이어서 변경된 패스워드를 메일로 전송한다</li>
			<li>메일 전송 시 필요한 HTML 태그 형식은 미리 작성해둘 수 있다</li>
			<li>위 작업은 서비스에서 @Transactional로 묶어서 처리해야 한다</li>
		</ol>
	</fieldset>
</body>
</html>