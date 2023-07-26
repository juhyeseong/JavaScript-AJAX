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
p.title {
	font-weight: bold;
}
p.title:hover {
	text-decoration: underline;
	cursor: pointer;
}
</style>
</head>
<body>
	<h1>ex03.jsp</h1>
	<hr>
	
	<div id="root">
		<c:forEach var="dto" items="${list }">
		<div class="item">
			<p class="title">${dto.title }</p>
		</div>
		</c:forEach>
	</div>
	
	<script>
		// p.title을 클릭하면
		// 제목을 전달하여 데이터를 검색하고
		// 데이터를 받아와서 iframe을 p 다음에 삽입한다
		// 만약 다른 요소가 불러와진 상태라면 모두 제거하고 위 코드를 수행한다
		const titleList = document.querySelectorAll('.title')
		
		function ajaxHandler(event) {
			const title = event.target.innerText
			const url = '${cpath}/selectOne'	// 요청할 주소
			const opt = {						// 요청에 포함할 옵션들
					method: 'POST',					// 요청 메서드 : POST
					headers: {						// 요청 헤더 : 컨텐트 타입: JSON
						'Content-Type': 'application/json; charset=utf-8'
					},
					body: JSON.stringify({			// 요청 본문 : 객체를 JSON문자열로 변환하는 것
						title: title
					})
			}
			fetch(url, opt)	// 주소와 옵션을 함께 전달하여 요청한다
			.then(resp => resp.text())
			.then(text => {
				const target = document.querySelector('iframe')
				if(target != null) {
					target.parentNode.removeChild(target)					
				}
				
				const item = event.target.parentNode
				item.innerHTML += text
			})
		}
		// titleList 안에 있는 모든 title에 대하여, 클릭했을 때, 함수가 실행되도록 한다
		titleList.forEach(title => title.onclick = ajaxHandler)
	</script>
</body>
</html>