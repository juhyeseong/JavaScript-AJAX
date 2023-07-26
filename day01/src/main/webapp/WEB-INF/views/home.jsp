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
	<h1>home.jsp</h1>
	<hr>
	
	<h3>네이버</h3>
	<form action="https://search.naver.com/search.naver">
		<p><input type="search" name="query" placeholder="검색"></p>
		<p><input type="submit"></p>
	</form>
	<br>
	
	<h3>자기자신</h3>
	<form>
		<p><input type="search" name="query" placeholder="검색"></p>
		<p><input type="submit"></p>
	</form>
	
	<ul>
		<li><a href="${cpath }/ex01">ex01</a></li>
		<li><a href="${cpath }/ex02">ex02</a></li>
		<li><a href="${cpath }/ex03">ex03</a></li>
	</ul>
</body>
</html>