<%@page import="beans.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz_result.jsp</title>
</head>
<body>
	<%!
		Account[] accs = new Account[] {
			new Account("itbank","it"),
			new Account("root","123"),
			new Account("user1","1")
		};
	
	
		public Account login(Account acc){
			for(int i=0;i<accs.length;i++){
				
				String accsId = accs[i].getId();
				String accsPw = accs[i].getPw();
				
				String req_id = acc.getId();
				String req_pw = acc.getPw();
				
				boolean isSameId = accsId.equals(req_id);
				boolean isSamePw = accsPw.equals(req_pw);
				
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
	
	<% 	request.setCharacterEncoding("utf-8");%>
	<jsp:useBean id="acc" class="beans.Account"></jsp:useBean>
	<jsp:setProperty property="*" name="acc"/>
	<%	
		acc = login2(acc);
		if(acc != null){
			response.sendRedirect("quiz_success.jsp");
		}
		else{
			response.sendRedirect("quiz_fail.jsp");
		}
	%>
	
</body>
</html>