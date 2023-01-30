<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03.jsp</title>
</head>
<body>
	<h1>JSTL core</h1>
	<hr/>
	
	
	
	<c:set var="hong" value="홍길동" /> <%-- <% pageContext.setAttribute("hong", "홍길동"); %> --%>
	
	<c:set var="kim" value="김진호" scope="page"/> <%-- pageContext.setAttribute("kim", "김진호"); --%>
										<%-- scope의 기본값은 page이다. --%>
	
	<c:set var="lee" value="이수진" scope="request" /> <%--request.setAttribute("Lee" , "이수진");--%>
	
	<c:set var="park" value="박현민" scope="session" /> <%-- sesion.setAttribute("park", "박현민"); --%>
	<c:set var="shin" value="신민찬" scope="application"/> <%-- application.setAttribute("shin", "신민찬") --%>
	
	
	<%-- EL 탐색 순서 : pageContext -> request -> session -> application --%>
	<%-- value에 빈값이나 null이 채워지면?? --%>
	<c:set var = "user" value="" scope="session"/>
	<c:set var = "login" value="null" scope="session"/>
	<ul>
		<li>hong = ${hong }</li>
		<li>kim = ${kim }</li>
		<li>Lee = ${lee }</li>
		<li>Park = ${park }</li>
		<li>Shin = ${shin }</li>
		<li>user = ${empty user }</li> <%-- 빈 값은 attribute가 없다고 취급되고 --%>
		
		<li>login = ${empty login }</li> <%--null은 글자 그대로 들어간다. --%>
		<li>login = ${login }</li>
	</ul>
	
	<form>
		<input name="forward" type="hidden" value="yes">
		<button>포워드</button>
		
		<a href="ex03_result.jsp">
			<button type="button">리다이렉트</button>
		</a>
	</form>
	
	<c:if test="${not empty param.forward }">
		<jsp:forward page="ex03_result.jsp"/>
	</c:if>

</body>
</html>