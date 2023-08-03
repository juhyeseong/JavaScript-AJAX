<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
	<div class="main">
		<fieldset>
			<legend>로그인 인증</legend>
		
			<form>
				<p><input type="number" name="authNumber" placeholder="인증번호 8자리" required></p>
				<p><input id="checkAuthNumber" type="submit" value="인증"></p>
			</form>
		</fieldset>
	</div>
	
	<script>
		const checkAuthNumber = document.getElementById('checkAuthNumber')
		
		async function checkAuthNumberHandler() {
			const authNumber = document.querySelector('input[name="authNumber"]')
			const url = '${cpath}/checkAuthNumber/' + authNumber.value
			const log = ${log}
			const opt = {						// 요청에 포함할 옵션들
					method: 'POST',					// 요청 메서드 : POST
					headers: {						// 요청 헤더 : 컨텐트 타입: JSON
						'Content-Type': 'application/json; charset=utf-8'
					},
					body: JSON.stringify({			// 요청 본문 : 객체를 JSON문자열로 변환하는 것
						log: log
					})
			}
			const row = await fetch(url, log).then(resp => resp.text())
			
			console.log(row)
			if(row != 0) {
				alert('로그인 성공 ~ ')
				location.href = '${cpath}'
			}
			else {
				alert('인증 실패 ~ ')
				history.go(-1)
			}
		}
		
		checkAuthNumber.onclick = checkAuthNumberHandler
	</script>
</body>
</html>