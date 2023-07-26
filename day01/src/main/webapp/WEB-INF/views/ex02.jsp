<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day11</title>
<style>
#root {
	width: 800px;
	margin: 20px auto;	
}
.wrap {
	width: 100%;
	display: flex;
	flex-flow: wrap;
}
.item {
	margin: 10px;
	widows: 180px;
	text-align: center;
}
img {
	height: 180px;
}
</style>
</head>
<body>
	<h1>ex02.jsp</h1>
	<hr>
	
	<p><button id="loadBtn">떡입마을유치원생들</button></p>
	<div id="root">
		<div class="wrap">
			
		</div>
	</div>
	
	<script>
		const loadBtn = document.getElementById('loadBtn')
		const wrap = document.querySelector('.wrap')
		
		loadBtn.onclick = function() {
			// JSON : JavaScript Object Notation(자바스크립트 객체 표현 형식)
			alert('이벤트 함수 호출 !!')
			
			const url = '${cpath}/zzanggu'	// 요청할 주소를 지정한다
			fetch(url)						// 지정한 주소로 요청을 보낸다
			.then(resp => resp.json())		// 응답이 돌아오면 응답을 json형식으로 변환한다
			.then(json => {					// 변환된 json객체를 이용하여 아래 코드를 수행한다
				console.log(json)			// json은 자바 스크립트 배열 형식이다
				for(let i = 0; i < json.length; i++) {
					const ob = json[i]
					let tag = '<div class="item">'
					tag += '		<div class="image">'
					tag += '<img src="${cpath}/resources/image/' + ob.img + '"></div>'
					tag += '		<div class="name">' + ob.name + '</div>'
					tag += '</div>'
					wrap.innerHTML += tag
				}
			})	// end of fetch.then().then()
		}	// end of onclick
		
		/*
			fetch(url)		지정한 주소로 비동기 요청을 전송한다(method=GET)
			fetch(url, opt)	지정한 주소에 opt를 포함하여 요청을 전송한다. 요청 메서드 및 파라미터 지정 가능
			
			.then(resp => resp.text())	단순 문자열을 처리하기 위해 사용한다(상태 메시지 출력 등)
			.then(resp => resp.json())	문자열을 json객체로 변환한다(가장 많이 사용한다)
		
			.then(json => { ... })	변환된 text 혹은 json을 이용하여 수행할 코드를 작성한다
			
			==============================================================
			const ob = JSON.parse(text)			// 텍스트를 객체로 변환한다
			const st = JSON.stringify(object)	// 객체를 JSON문자열로 변환한다
			==============================================================
		*/
	</script>
</body>
</html>