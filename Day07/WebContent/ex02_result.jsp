<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02_result.jsp</title>
</head>
<body>
	<h1>전송</h1>
	<hr/>
	<%
		String site = request.getParameter("site");
	
		// 첫번째 요청인 ex02.jsp에서의 파라미터는 두번째 요청에서는 파라미터가 사라진다.
		response.sendRedirect(site);
	%>
</body>
</html>