<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz.jsp</title>
<style>
	table {
		border-collapse: collapse;
	}
	
	
	th, td{
		border: 1px solid black;
		text-align: center;
		padding: 10px 15px;
	}
</style>
</head>
<body>
	<h1>Quiz1</h1>
	<hr>
	
	<ul>
		<li>JSP의 반복을 활용해서 구구단 7단을 출력</li>
		<li>단 table로 작성할 것</li>
	</ul>
	
	<table>
		<thead>
			<tr>
				<th colspan="4">7단</th>

				<th>결과</th>
			</tr>
		</thead>
		<tbody>
			<%for(int i=1;i<=9;i++){%>
			<tr>
				<td> 7 </td>
				<td> x </td>
				<td> <%=i %> </td>
				<td> = </td>
				<td> <%=7*i %> </td>
			</tr>
			<%} %>
		</tbody>
	</table>
</body>
</html>