<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_result</title>
</head>
<body>
	
	<%
		String email = request.getParameter("email");
		String store = request.getParameter("store");
		
		Cookie[] cs = new Cookie[] {
			new Cookie("email",email), 
			new Cookie("store",store)		
		};
		
		// Cookie("저장될 이름","값")
		// 생성자에 (이름, 값) 형태로 초기화 한다. 둘 다 타입이 문자열
		// 즉, 쿠키는 문자열로 데이터를 저장한다.
		// 값을 문자열로 받기 때문에 객체를 넣을 수 없다.
		
		// 쿠키를 받자마자 만료가 되어서 쿠키가 사라진다.
		
		for(int i=0;i<cs.length;i++){
			cs[i].setMaxAge(0);
			if("yes".equals(store)){
				// 수명 설정
				cs[i].setMaxAge(60*60*24*7);		// 초단위로 지정 (3600 = 1시간으로 지정)
			}
			response.addCookie(cs[i]);
		}
	%>
	
	<h1>결과</h1>
	<hr/>
	
	<p>이메일 : <%=email %></p>
	
	<a href="ex01.jsp">
		<button>ex01</button>
	</a>
	
</body>
</html>