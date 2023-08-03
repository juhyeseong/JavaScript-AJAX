<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
	<div class="main">
		<fieldset>
			<legend>회원가입</legend>
		
			<form method="POST">
				<p><input id="userId" type="text" name="userId" placeholder="아이디" required autofocus></p>
				<p>
					<input id="dupCheckBtn" type="button" value="중복확인">
					<span id="dupMessage"></span>
				</p>
				<p><input type="password" name="userPw" placeholder="패스워드" required></p>
				<p><input type="text" name="userName" placeholder="이름" required></p>
				<p><input type="email" name="email" placeholder="이메일" required></p>
				<p><input id="sendAuthNumber" type="button" value="인증 번호 발송"></p>
				<div class="hidden">
					<p><input type="number" name="authNumber" placeholder="인증번호 8자리" required></p>
					<p>
						<input id="checkAuthNumber" type="button" value="인증 번호 확인">
						<span id="authMessage"></span>
					</p>
				</div>
				<p><input type="submit" value="회원가입"></p>
			</form>
		</fieldset>
		
		<script>
			const sendAuthNumber = document.getElementById('sendAuthNumber')
			
			async function sendAuthNumberHandler() {
				// input중에서 name이 email인 요소를 불러온다
				const email = document.querySelector('input[name="email"]')
				// 서버의 sendAuthNumber 주소로 요청을 보내면서 email에 입력된 값을 함께 제출한다(쿼리스트링, 경로 변수)
				// 서버에서는 랜덤 정수 8자리를 생성하여 메일로 전송하고, 전송한 인증번호를 세션에 저장해둔다
				const url = '${cpath}/sendAuthNumber/' + email.value + '/'
				const json = await fetch(url).then(resp => resp.json())
				
				// alert을 이용하여 메일을 보냈다고 팝업을 띄운다(만약 예외가 발생하면 문제가 발생했다고 띄운다)
				// 정상적으로 메일을 보냈다면 아래 있는 hidden 클래스를 제거하여 다음 내용을 진행할 수 있도록 준비한다
				alert(json.message)
				if(json.success == 1) {
					document.querySelector('div.hidden').classList.remove('hidden')
					document.querySelector('input[type=submit]').disabled = 'disabled'
				}
			}
			
			sendAuthNumber.onclick = sendAuthNumberHandler
		
			// 이메일을 확인하여 인증번호를 입력하고, 인증번호 확인 버튼을 눌렀을 때 실행되는 함수	
			const checkAuthNumber = document.getElementById('checkAuthNumber')
			
			async function checkAuthNumberHandler() {
				const authNumber = document.querySelector('input[name="authNumber"]')
				const url = '${cpath}/checkAuthNumber/' + authNumber.value
				const row = await fetch(url).then(resp => resp.text())
				const authMessage = document.getElementById('authMessage')
				console.log(row)
				if(row != 0) {
					document.querySelector('input[type="submit"]').removeAttribute('disabled')
					authMessage.innerText = '인증 성공'
					authMessage.style.color = 'blue'
				}
				else {
					authMessage.innerText = '인증 실패'
					authMessage.style.color = 'red'
				}
			}
			
			checkAuthNumber.onclick = checkAuthNumberHandler
		</script>
		
		<script>
			const dupCheckBtn = document.getElementById('dupCheckBtn')
			
			async function dupCheckHandler() {
				const dupMessage = document.getElementById('dupMessage')
				const userId = document.querySelector('input[name="userId"]')
				
				if(userId.value == '') {
					dupCheckBtn.focus()
					alert('먼저 사용할 ID를 입력해주세요 ~ ')
					dupMessage.innerText = ''
					
					return
				}
				const url = '${cpath }/dupCheck/' + userId.value
				const count = await fetch(url).then(resp => resp.text())
				
				if(isNaN(count)) {
					alert('처리 도중 문제가 발생했습니다 ~ ')
				}
				else if(count == 0) {
					dupMessage.innerText = '사용 가능한 ID입니다'
					dupMessage.style.color = 'blue'
				}
				else {
					dupMessage.innerText = '이미 사용중인 ID입니다'
					dupMessage.style.color = 'red'
					userId.select()
				}
			}
			
			dupCheckBtn.addEventListener('click', dupCheckHandler)
// 			document.querySelector('input[name="userId"]').addEventListener('blur', dupCheckHandler)
			
			// onfocus : 마우스나 키보드에 의해 문서요소가 선택되었을 때 발생하는 이벤트 리스너
			// onblur : 포커스 상태에서 선택을 상실할 때 발생하는 이벤트 리스너(다른 요소로 포커스가 넘어가버리면 발생)
		</script>
	</div>
</body>
</html>