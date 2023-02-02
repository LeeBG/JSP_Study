<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
	<% request.setCharacterEncoding("utf-8"); %>
	
	<%-- 파라미터 받기 --%>
	<jsp:useBean id="input" class="model.dto.AccountDTO"/>
	<jsp:setProperty property="*" name="input"/>

	<%-- DB에 전달 --%>
	<jsp:useBean id="dao" class="model.AccountDAO"/>
	<c:set var="row" value="${dao.insert(input) }"></c:set>

	<c:if test="${row != 0 }">
		<script>
			alert('가입성공');
			location.href='${cpath}';
		</script>
	</c:if>
	
	<c:if test="${row == 0 }">
		<script>
			alert('가입 실패');
			history.go(-1);
		</script>
	</c:if>
	
<%@ include file="../footer.jsp" %>