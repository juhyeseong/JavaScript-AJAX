<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
	<div class="main">
		<fieldset>
			<legend>메일 보내기 테스트</legend>
			
			<form method="POST">
				<p><input type="email" name="email" placeholder="받는 주소"></p>
				<p><textarea name="content" placeholder="보낼 내용"></textarea></p>
				<p><input type="submit" value="보내기"></p>
			</form>
		</fieldset>
	</div>
</body>
</html>