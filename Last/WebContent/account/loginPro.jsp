<%@page import="model.dto.AccountDTO"%>
<%@page import="model.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

	<%	request.setCharacterEncoding("UTF-8"); %>
	<jsp:useBean id="input" class="model.dto.AccountDTO"/>
	<jsp:useBean id="dao" class="model.AccountDAO"/>
	<jsp:setProperty property="*" name="input"/>
	<c:set var="user" value="${dao.login(input) }" scope="session"/>
	
	<c:if test="${not empty user }">
		<c:set var="msg" value="${user.name }님 로그인 성공" />	
		<script>
			alert(' ${msg } ');
			location.href='${cpath }';
		</script>
	</c:if>
	<c:if test="${empty user }">
		<c:set var="msg" value="로그인 실패" />
		<script>
			alert(' ${msg } ');
			history.go(-1);
		</script>
	</c:if>
	
	
<%@ include file="../footer.jsp" %>