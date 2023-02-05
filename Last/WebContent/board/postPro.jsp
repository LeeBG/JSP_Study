<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="input" class="model.dto.BoardDTO"/>
<jsp:useBean id="dao" class="model.BoardDAO"/>
<jsp:setProperty property="*" name="input"/>
<c:set var="row" value="${dao.save(input) }"/>

<c:if test="${row != 0 }">
	<script>
		alert('글쓰기 성공');
		location.href='${cpath}/board/view.jsp';
	</script>
</c:if>

<c:if test="${row == 0 }">
	<script>
		alert('글쓰기 실패');
		history.go(-1);
	</script>
</c:if>

<%@ include file="../footer.jsp" %>