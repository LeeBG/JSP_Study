<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과</title>
</head>
<body>
	<%
		String sn1 = request.getParameter("n1");
		String sn2 = request.getParameter("n2");
		
		if(sn1 == null) {
			sn1 = "0";
		}
		if(sn2 == null){
			sn2 = "0";
		}
		
		int n1 = Integer.parseInt(sn1); 
	   	int n2 = Integer.parseInt(sn2); 
	   
	%>
	
	<h1>결과</h1>
	<hr/>
	
	<h3><p><%= n1 %> + <%=n2 %> = <%=n1+n2 %></p></h3>
	<a href="quiz2.jsp">
		<button>이전으로</button>
	</a>
	
</body>
</html>