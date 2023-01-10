<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_result.jsp</title>
</head>
<body>
	
	<%
		String id =  request.getParameter("id");
		String pw =  request.getParameter("pw");
		String email =  request.getParameter("email");
		String date = request.getParameter("date");
		String gender =request.getParameter("gender");
		// String hobby = request.getParameter("hobby");
		// - hobby는 여러개가 전송될 수 있다. getParameter()를 사용하면 첫번째 하나만 받아진다.
		 String[] hobbies = request.getParameterValues("hobby");
		// 배열을 참조변수이므로 바로 출력하면 해시코드가 출력됨
		String hobby = Arrays.toString(hobbies);
		// - Arrays의 toString()은 배열의 요소를 문자열로 반환하는 메서드
		
		String major = request.getParameter("major");
		String file = request.getParameter("file");
		String info = request.getParameter("information");
	%>
	
	<h1>결과</h1>
	<hr/>
	
	<h3> 1. getParameter </h3>	
	
	<ul>
		<li><%=id %></li>
		<li><%=pw %></li>
		<li><%=email %></li>
		<li><%=date %></li>
		<li><%=gender %></li>
		<li><%=hobby %></li>
		<li><%=major %></li>
		<li><%=file %></li>
		<li><%=info %></li>
	</ul>
	
	<h3>2. getParameterNames()</h3>
	<ul>
		<%
			Enumeration<String> en = request.getParameterNames();
			while(en.hasMoreElements()){
				String name = en.nextElement();
				out.write("<li>" + name + "</li>");
			}
		%>
	</ul>
	<br/>
	
	<h3>3. getParameterMap()</h3>
	
	<%
		Map<String,String[]> map = request.getParameterMap();
		// key와 value의 형태
		Set<String> keys = map.keySet(); // map에서 key만 빼내는 Set으로 반환
		
		// Set은 반복이 가능하다.
		for(String k : keys){
			String [] values = map.get(k);
			String v = Arrays.toString(values);
			
			out.println("<li>" + k + " : " + v + "</li>");
		}
	%>
</body>
</html>