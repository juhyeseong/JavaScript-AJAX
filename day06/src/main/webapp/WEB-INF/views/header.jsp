<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day14</title>
<style>
body {
	margin: 0px;
}

a {
	all: unset;
	cursor: pointer;
}

/* header style */
header {
	height: 150px;
	background-color: gray;
	color: #eee;
}
.title {
	width: 900px;
	
	margin: auto;
	padding: 10px 0px;
	
	text-align: center;
	font-size: 30px;
	font-weight: bold;
}
ul {
	list-style: none;
	
	padding: 0px;
	
	display: flex;
	justify-content: space-around;
	align-items: center;
	
	font-size: 20px;
	font-weight: bold;
}
.loginSpace {
	display: flex;
	justify-content: space-between;
	
	font-size: 15px;
}
.loginSpace .left {
	padding: 0px 20px;
}
.loginSpace .right {
	padding: 0px 30px;
}

/* main style */
.main {
	width: 900px;
	margin: auto;
	padding: 20px;
}

/* form style */
fieldset {
	display: flex;
	justify-content: center;
	align-items: center;
}
input {
	width: 700px;
	height: 50px;
}
input[type="submit"] {
	cursor: pointer;

	border: 0px;
	width: 710px;

	font-size: 20px;
	font-weight: bold;	
	background-color: gray;
	color: #eee;
}
input[type="button"] {
	cursor: pointer;
	
	border: 0px;
	width: 100px;
	height: 30px;
	
	background-color: gray;
	color: #eee;
}
textarea {
	width: 700px;
	height: 300px;
	resize: none;
}
.hidden {
	display: none;
}
#overlay {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.6);
}
#modal-content {
	width: 720px;
	height: 405px;
	box-sizing: border-box;
	background-color: white;
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	z-index: 5;
}
</style>
</head>
<body>
	<header>
		<div class="title"><a href="${cpath }">Day14</a></div>
		<div class="loginSpace">
			<div class="left">
				<c:if test="${empty login }">현재 회원 : 없음</c:if>
				<c:if test="${not empty login }">현재 회원 : ${login.userId }님</c:if>
			</div>
			<div class="right">
				<c:if test="${not empty login }">
					<a href="${cpath }/logout">로그아웃</a>
				</c:if>
			</div>
		</div>
		<nav>
			<ul>
				<li><a href="${cpath }/join">회원가입</a></li>
				<li><a href="${cpath }/login">로그인</a></li>
				<li><a href="${cpath }/resetPassword">패스워드 재설정</a></li>
				<li><a href="${cpath }/mailTest">메일 보내기 테스트</a></li>
			</ul>
		</nav>
	</header>
</body>
</html>