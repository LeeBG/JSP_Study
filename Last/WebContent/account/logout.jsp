<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:remove var="user"/>

<script>
	alert('로그아웃 되었습니다.');
	location.href='${cpath }';
</script>

<%@ include file="../footer.jsp" %>