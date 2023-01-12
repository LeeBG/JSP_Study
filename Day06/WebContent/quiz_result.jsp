<%@page import="beans.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과</title>
<style>
	body{
		text-align: center;
	}
	h3 {
		font-size: 50px;
	}
	button{
		position: relative;
		border-radius: 20px;
		border: 1px solid gray;
		width: 180px;
		height: 50px;
		font-size: 30px;
		background-color: skyblue;
	}
	
</style>
</head>
<body>
	<%!
		Account[] accs = new Account[] {
				new Account("itbank","it","아뱅"),
				new Account("root","123","관리자"),
				new Account("user","1","유저1")
		};
		
		// 첫번째 getter를 이용한 멤버변수의 값 비교(String의 equals)
		public Account login(Account acc){
			for(int i=0;i<accs.length;i++){
				
				String accsId = accs[i].getId();
				String accsPw = accs[i].getPw();
				
				String userId = acc.getId();
				String userPw = acc.getPw();
				
				boolean isSameId = accsId.equals(userId);
				boolean isSamePw = accsPw.equals(userPw);
				
				if(isSameId && isSamePw){
					return accs[i];
				}
			}
			return null;
		}
		// 두번째 방법 : hashCode와 equals를 오버라이딩해서 객체 비교 
		public Account login2(Account acc){
			for(int i=0;i<accs.length;i++){
				boolean isSame = accs[i].equals(acc);
				
				if(isSame){
					return accs[i];
				}
			}
			return null;
		}
	%>
	
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	
	<jsp:useBean id="acc" class="beans.Account"></jsp:useBean>
	<%-- Account acc = new Account(); --%>
	<jsp:setProperty property="*" name="acc"/>

	<%
		acc = login2(acc);
	
		String msg = "로그인 실패";
		
		if(acc != null){
			msg = acc.getNick()+"이(가) 로그인 했습니다.";
		}
	%>
	<h1>로그인 결과</h1>
	<hr/>
	
	<h3><%=msg %></h3>
	<a href="quiz.jsp">
		<button>돌아가기</button>
	</a>
</body>
</html>