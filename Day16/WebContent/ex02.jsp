<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	body {
		text-align : center;
	}
	
	ul {
		padding-left : 15px;
	}
	div {
		display: flex;
	}
</style>
<body>
	<%
		// 1. 일반 객체 (= 인스턴스)
		Person hong = new Person("홍길동", 23);
		Person jin = new Person("홍진호", 22);
		Person kim = new Person("김진호", 36);
		Person park = new Person("박찬호", 51);
		
		pageContext.setAttribute("hong", hong);
		request.setAttribute("hong", jin);
		session.setAttribute("kim", kim);
		application.setAttribute("park", park);
		
		ArrayList<Person> list = new ArrayList<Person>();
		
		list.add(hong);
		list.add(jin);
		
		session.setAttribute("list", list);
		
		
		// 3. Map 
		HashMap<String, Person> map = new HashMap<String, Person>();
		
		map.put("kim",kim);
		map.put("park", park);
		
		request.setAttribute("map", map);
		
	%>
	
	<h1>EL vs 표현식</h1>
	<hr>
	<div>
	<fieldset>
		<legend>표현식</legend>
		
		<ul>
			<li><%=((Person)pageContext.getAttribute("hong")).getName() %></li>
			<li><%=((Person)request.getAttribute("hong")).getName() %></li>
			<li><%=((Person)session.getAttribute("kim")).getName() %></li>
			<li><%=((Person)application.getAttribute("park")).getName() %></li>
			<li><%=((ArrayList<Person>)session.getAttribute("list")).get(0).getName() %></li>
			<li><%=((HashMap<String, Person>)request.getAttribute("map")).get("park").getName() %></li>
		</ul>
	</fieldset>
	
	<fieldset>
		<legend>EL표현식</legend>
		
		<ul>
			<%--getter가 없으면 hong.name은 getter로 꺼내오지 못한다. --%>
			<li>${hong.getName() } </li>		<%--메서드 호출도 되며 --%>
			<li>${hong.name }</li>				<%--필드를 바로 사용해도 됨, getter를 호출하게 되어있음(편의성) --%>
			<li>${requestScope.hong.name }</li> <%--이름이 겹치면 영역(Scope)명을 작성해야한다. 따라서, 가급적 이름을 피해서 정하는 것이 좋다 --%>
												<%--pageScope, requestScope, sessionScope, applicationScope --%>
			<li>${kim.name }</li>
			<li>${park.name }</li>
			<li>${list.get(0).getName() }</li>
			<li>${list[0].name }</li>
			<li>${map['park'].name }</li>
		</ul>
	</fieldset>
	</div>
</body>
</html>