<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>
	<h1>PageScope</h1>
	<hr/>
	<% 
		
		// 각 scope에 저장할 수 있는 공간을 attribute라고 한다.
		
		//void setAttribute(String name, Object value)
		// - name은 데이터를 접근하기 위한 index
		// - value는 저장하려는 데이터 
		// - Object로 받는 이유는 어떤데이터형식이든 받는다는 것으로 업캐스팅
		pageContext.setAttribute("p1", "홍길동");
		request.setAttribute("p2", "김진호");
		session.setAttribute("p3", "이호찬");
		application.setAttribute("p4", "박수진");
	%>
	
	<h3>개발자가 데이터를 저장할 수 있는 공간을 제공하는 내장 객체</h3>
	<ol>
		<li>pageContext : 현재 페이지에서만 유지. 다른 페이지로 이동시 새로 생성됨</li>
		<li>request		: 현재 페이지에서만 유지. forward시 다른페이지에서도 유지됨</li>
		<li>session		: 웹 브라우저가 종료될 때 까지 유지가 됨</li>
		<li>application : 웹 서버가 종료될 때 까지 유지.</li>
	</ol>
	
	<ul>
		<%-- Object getAttribute(String name) --%> 
		<li>페이지 	: <%=pageContext.getAttribute("p1") %></li>
		<li>리퀘 	: <%=request.getAttribute("p2") %></li>
		<li>세션 	: <%=session.getAttribute("p3")%></li>
		<li>앱		: <%=application.getAttribute("p4") %></li>
	</ul>
	
	<p>
		<a href="ex01_result.jsp">
			<button>다른 페이지</button>
		</a>
	</p>
	
	<form>		<%-- action을 생략할 시, 파라미터는 자기 자신 페이지로 전송됨 --%>
		<p><input name="forward" type="hidden" value="yes"></p>
		<button>포워드</button>
	</form>
	
	<%
		// 사용자가 포워드 키를 누르면 파라미터로 forward가 yes를 담은 채로 
		// 자신의 페이지를 새로 불러오는데 이때 forward파라미터 yes를 감지해서 
		// forward시킴
		String forward = request.getParameter("forward");
		if("yes".equals(forward)){
			RequestDispatcher rd =
					request.getRequestDispatcher("ex01_result.jsp");
			
			rd.forward(request, response);
		}
	%>
	
</body>
</html>