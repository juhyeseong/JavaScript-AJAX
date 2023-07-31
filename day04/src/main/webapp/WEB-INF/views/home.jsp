<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day12</title>
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style.css">
<script>
	const cpath = '${cpath}'
</script>
<script src="${cpath }/resources/js/script.js"></script>
</head>
<body>
	<h1>home.jsp</h1>
	<hr>
	
	<h3>버전 : ${version }</h3>
	
	<div class="space">
		<button id="addBtn">추가</button>
	</div>
	
	<div id="root"></div>
	
	<div id="modal" class="hidden">
		<div id="overlay"></div>
		<div id="modal-content"></div>
	</div>
	
	<script>
		document.getElementById('addBtn').onclick = addHandler
		document.getElementById('overlay').onclick = closeModal
		window.onload = loadHandler
	</script>
</body>