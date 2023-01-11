<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz2_result.jsp</title>
<style>
	body{
		margin: 0 auto;
		text-align: center;
	}
	
	.result {
		font-size: 50px;
	}
	
	button{
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

	<h1>로그인 결과</h1>
	<hr/>
	<%!
		private String[] ids = new String[]{ "itbank", "root", "user" };
		private String[] pws = new String[]{ "it", "123", "1" };
		
		
		public String login(String id, String pw){
			
			for(int i=0;i<ids.length;i++){
				if(ids[i].equals(id)&& pws[i].equals(pw)){
					return id;
				}
			}
			return null;		
		}
	%>
	
	<%
		request.setCharacterEncoding("utf-8");
		String req_id = request.getParameter("id");
		String req_pw = request.getParameter("pw");
		
		String result = login(req_id,req_pw);
		
		if(result!=null){
			out.println("<h3 style=\"color: blue\" class=\"result\">" + result + "님이 로그인했습니다.</h3>");
		}
		else{
			out.println("<h3 style=\"color: red\" class=\"result\"> 로그인 실패.</h3>");
		}
	%>
	<a href="quiz2.jsp">
		<button> 돌아가기 </button>
	</a>
	
</body>
</html>