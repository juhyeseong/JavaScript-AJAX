<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
	<div class="main">
		<fieldset>
			<legend>로그인</legend>
		
			<div id="login">
				<p><input type="text" name="userId" placeholder="아이디" required autofocus></p>
				<p><input type="password" name="userPw" placeholder="패스워드" required></p>
				<p><input type="submit" value="로그인"></p>
			</div>
			
			<div id="auth" class="hidden">
				<p><input type="number" name="authNumber" placeholder="인증번호 8자리" required></p>
				<p><input id="checkAuthNumber" type="submit" value="인증"></p>
			</div>
		</fieldset>
	</div>
	
	<script>
		const loginBtn = document.querySelector('input[value="로그인"]')
		let login = null
		
		async function loginHandler() {
			const userId = document.querySelector('input[name="userId"]')
			const userPw = document.querySelector('input[name="userPw"]')
			const opt = {						
					method: 'POST',					
					headers: {					
						'Content-Type': 'application/json; charset=utf-8'
					},
					body: JSON.stringify({			
						userId: userId.value,
						userPw: userPw.value
					})
			}
			const url = '${cpath}/login'
			
			try {
				login = await fetch(url, opt).then(resp => resp.json())
				
				if(login != null) {
					const logForm = document.getElementById('login')
					const authForm = document.getElementById('auth')
					
					logForm.classList.add('hidden')
					authForm.classList.remove('hidden')
				}
			}
			catch(error) {
				alert('아이디 또는 패스워드가 틀렸습니다 ~ ')
			}
		}
		
		loginBtn.onclick = loginHandler
	</script>
	
	<script>
		const checkAuthNumber = document.getElementById('checkAuthNumber')
		
		async function checkAuthNumberHandler() {
			const authNumber = document.querySelector('input[name="authNumber"]')
			const url = '${cpath}/checkAuthNumber/' + authNumber.value
			const opt = {						
					method: 'POST',					
					headers: {						
						'Content-Type': 'application/json; charset=utf-8'
					},
					body: JSON.stringify(login)
			}
			const row = await fetch(url, opt).then(resp => resp.text())
			
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