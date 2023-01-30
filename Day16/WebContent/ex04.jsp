<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.jsp</title>
</head>
<body>
	<h1>연습</h1>
	<hr/>
	
	<%-- form을 작성 후 숫자하나를 전달 
		파라미터를 EL로 받아서 해당 수의 구구단을 출력한다.
	--%>
	<form method = "POST">
		<p><input name="gugu" placeholder="구구단 몇단 ?? "></p>
		<button>계산</button>
	</form>
	
	<hr/>
	<%
	String gugu = request.getParameter("gugu");
	if(gugu !=null){ 
	%>
		<h3>${param.gugu }단 계산</h3>
		<%for(int i =1; i <10;i++){ %>
			<p>${param.gugu } x <%=i %> = <%=(Integer.parseInt(request.getParameter("gugu")))*i %><p>
		<% }
	 }%>
	 
	 <hr/>
	 <%-- EL은 자바의 변수에 접근하는 것이 아니라 attribute에 접근하는 것 --%>
	 <%for(int i = 1; i <= 9; i++){ 
	 	pageContext.setAttribute("i", i);%>
	 
	 <p>${param.gugu } x ${i } = ${param.dan * i}<p>
	 	
	 <% } %>
</body>
</html>