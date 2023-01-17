<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<%
		
		Cookie[] cookies = request.getCookies();
		if(cookies != null){
			for(Cookie ck : cookies){
				ck.setMaxAge(0);
				response.addCookie(ck);
			}
			session.removeAttribute("user");
			response.sendRedirect("quiz.jsp");
		}
	%>
</body>
</html>