<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05_result.jsp</title>
</head>
<body>
	<h1>요청받기</h1>
	<%
		// 사용자가 form에 입력한 정보를 전달하는데
		// 이는 요청(request)에 담겨져 있다.
		// 이러한 데이터를 Parameter라고 한다.
		// JSP는 요청에 관한 처리를 하기 위해서 request 객체를 제공(=내장 객체)
		
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		// String getParameter(String name)
		// - 파라미터의 이름을 문자열로 전달하면 값을 문자열로 반환하는 메서드
		// - 쿼리 스트링으로 전달되는 파라미터의 값을 가져온다.
		// - 만약 해당 파라미터의 이름이 없으면 null을 리턴한다.
		Integer num_age = Integer.parseInt(age);
	%>
	<h1>결과</h1>
	<hr/>
	<h3><%=name %>님은 <%=num_age %>세 입니다~</h3>
	
	<a href="ex05.jsp">
		<button>돌아가기</button>
	</a>
</body>
</html>