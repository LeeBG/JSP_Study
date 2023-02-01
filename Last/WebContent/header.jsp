<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>loginForm</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
</head>
<body>
	
	<div class="container">
		<div class="userInfo">
			${user.nick }
			${empty user ? '' : ' | ' }
			<a href="${cpath }/account/myPage.jsp">마이페이지</a>
		</div>
	    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
			<a class="navbar-brand" href="${cpath }">ITBANK</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
		
			<div class="collapse navbar-collapse" id="collapsibleNavbar">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link"
						href="#">HOME</a></li>
					<li class="nav-item"><a class="nav-link"
						href="#">BOARD</a></li>
					
					<li class="nav-item">
					<a class="nav-link"
						href="${cpath }/account/${empty user ? 'login' : 'logout' }.jsp">
						${empty user ? 'LOGIN' : 'LOGOUT' }
						</a>
					</li>
				</ul>
			</div>
		</nav>
	</div>
	<br>