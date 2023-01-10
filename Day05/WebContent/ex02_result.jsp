<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		// - 인코딩 방식을 지정. POST방식으로 한글을 전송할 때 꼭 작성한다.
		
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String email = request.getParameter("email");
		
		// request의 다양한 메서드를 살펴보자~
		String encoding = request.getCharacterEncoding();
		String method = request.getMethod();
		String server = request.getLocalAddr();
		String client = request.getRemoteAddr();
		String path = request.getContextPath();
		String uri = request.getRequestURI();
		StringBuffer url = request.getRequestURL();
		String parameter = request.getQueryString(); // 쿼리스트링만 잘라서 보여준다.
		
		ServletContext context = request.getServletContext();
		String realPath = context.getRealPath("ex02_result.jsp");
	%>

	<h1>결과</h1>
	<hr/>
	
	<h3>주소창을 확인해 보세요~</h3>
	
	<ul>
		<li>인코딩 방식 : <%=encoding %></li>
		<li>요청 메서드 : <%=method %></li>
		<li>요청 서버 주소 : <%=server %></li>
		<li>클라이언트 주소 : <%=client %></li>
		<li>프로젝트 경로 : <%=path %></li>
		<li>URI : <%=uri %></li>
		<li>URL : <%=url %></li>
		<li>파라미터(쿼리스트링) : <%=parameter %></li>
		<li>절대경로 : <%=realPath %>
	</ul>
	
	<ul>
		<li>이름 : <%=name %> </li>
		<li>나이 : <%=age %></li>
		<li>이메일 : <%=email %></li>
	</ul>
	
	<a href="ex02.jsp">
		<button>ex02</button>
	</a>
</body>
</html>