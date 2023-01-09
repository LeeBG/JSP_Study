<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
<style>
	li {
		margin: 10px 0px;
		font-size: 20px;
		font-weight: 700;
		color: red;
		text-decoration: underline;
	}	
</style>
</head>
<body>
	<h1>JSP 기초</h1>
	<hr/>
	<!-- HTML의 주석. 소스 보기로 노출된다. -->
	<%--JSP의 주석입니다!!! --%>
	<ul>
		<li>지시자(directice) : &lt;%@ %&gt;, 페이지 전반에 걸친 설정이나 외부 파일을 불러 올 때 사용한다.</li>
		<li>선언부(declation) : &lt;%! %&gt;, 필드나 메서드를 작성하는 구간. 자바에서 클래스 바로 안쪽이라고 생각하면 된다</li>
		<li>실행부(scriptlet) : &lt;% %&gt;, 지역변수나 제어문을 사용하기 위한 구간. 자바에서 main()라고 생각하면 된다.</li> 
		<li>표현식(expression): &lt;%= %&gt;, HTML영역에서 자바의 변수나 메서드를 사용할 수 있게 한다.</li>		
	</ul>
	
	<%-- 선언부 --%>
	<%! 
		// 여기는 자바 영역이다.
		private int n1 = 10; 	// 접근 제어자가 붙는다. -> 클래스의 멤버
		
		// 여기는 분명 클래스 바로 안쪽이다.
		public int adder(int n1, int n2){
			return n1 + n2;
		}
	%>
	
	<%-- 다시 여기 부터는 HTML영역 --%>
	
	<%
		// 스크립틀릿 영역
		// private int n2 = 20;
		// - 지역변수에는 접근 제어자가 붙을 수 없다.
		int n2 = 20;
		for(int i=1;i<=5;i++){
			out.println("<p>"+i+" : Hello World!! </p>");
			
			// JspWriter out
			// - 웹 브라우저에 데이터를 출력하는 객체
			// - JSP 내에서 이미 제공되고 있다. 이를 JSP내장객체라고 한다.
		}
		
		out.println("<h3>n1 = "+n1+", n2 = "+n2+"</h3>");
		out.println("<h3> adder(n1, n2) = "+ adder(n1, n2) + "</h3>");
	%>
	
	<%-- HTML영역에서 자바 --%>
	<%-- 표현식은 변수 호출뿐만아니라, 메서드 호출 및 연산자 사용도 가능하다. --%>
	<h3>n1=<%=n1%> n2=<%=n2%></h3>
	<h4>adder(5,6) = <%=adder(5,6) %></h4>
	<h4>n1 * n2 = <%=n1 * n2 %></h4>
	
</body>
</html>
