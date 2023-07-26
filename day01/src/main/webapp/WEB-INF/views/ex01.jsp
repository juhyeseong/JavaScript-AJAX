<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day11</title>
</head>
<body>
	<h1>ex01.jsp</h1>
	<hr>
	
	<input>
	<div id="msg"></div>
	<button id="button">지금 몇 시야</button>
	
	<fieldset>
		<legend>AJAX-비동기통신</legend>
		
		<ul>
			<li>XMLHttpRequest</li>
			<li>jQuery AJAX</li>
			<li>fetch</li>
			<li>axios</li>
		</ul>
	</fieldset>
	
	<script>
		const button = document.getElementById('button')
		const msg = document.getElementById('msg')
		
		button.onclick = function() {
			const url = '${cpath}/ex01/whatTime'
			
			fetch(url)					// 지정한 url로 요청을 보낸다
			.then(resp => resp.text())	// 요청이 서버에서 처리되면 응답을 받는다(resp)
			.then(text => {				// 응답을 text형태로 변환하여 아래 내용을 수행한다
				msg.innerText = text	// msg에 text의 내용을 innerText형태로 삽입한다
			})
		}
	</script>
</body>
</html>