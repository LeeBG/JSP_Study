<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>
	<%
		Cookie[] cs = request.getCookies();
		String email,store;
		
		email = store = "";
		
		
		if(cs!=null){								// 최초 방문시 쿠키가 없을 수도 있다.
			for(Cookie ck: cs){
				switch(ck.getName()){
					case"email":					// 쿠키의 이름을 보고
						email=ck.getValue(); break; // 자바의 변수에 저장
					case"store":
						store = "checked"; break;
				}
			}
		}
	%>
	
	<h1>쿠키</h1>
	<hr/>
	
	<ul>
		<li>웹에서 저장할 데이터를 클라이언트에 발급해서 보관하는 방식(= 쿠폰)</li>
		<li>다음, 클라이언트가 서버에 방문 시 쿠키를 가져간다.</li>
		<li>클라이언트에 저장되는 만큼 공용 컴퓨터에서는 중요한 정보를 저장하면 안된다.</li>
		<li>만약 중요한 정보를 저장하려면 쿠키의 암호화가 필요하다.</li>		
	</ul>
	
	<fieldset style="display: inline-block;">
		<legend>쿠키 연습</legend>
		<form action="ex01_result.jsp">
			<p><input name="email" type="email" placeholder="이메일 입력" value="<%=email %>"></p>
			<p><input name="store" type="checkbox" value="yes" <%=store %>>저장</p>
			<button>전송</button>
		</form>
	</fieldset>
</body>
</html>