<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
<style>

	table{
		border-collapse: collapse;
		display: inline-block
	}
	
	th, td {
		border : solid 1px black;
		padding : 10px 15px;
	}
		
	
</style>
</head>
<body>
	<h1>EL 연산자</h1>
	<hr/>
	
	<table>
		<thead>
			<tr>
				<th>연산식</th>
				<th>결과</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>\${10 + 5 }</td>
				<td>${10 + 5 }</td>
			</tr>
			
			<tr>
				<td>\${10 - 5 }</td>
				<td>${10 - 5 }</td>
			</tr>
			
			<tr>
				<td>\${10 * 3 }</td>
				<td>${10 * 3 }</td>
			</tr>
			
			<tr>
				<td>\${10 / 3 }</td>
				<td>${10 / 3 }</td>
			</tr>
			
			<tr>
				<td>\${10 % 3 }</td>
				<td>${10 % 3 }</td>
			</tr>

			<tr>
				<td>\${10 < 5 }</td>
				<td>${10 < 5 }</td> <%--EL은 연산자를 기호로 제공하며, --%>
			</tr>
			
			<tr>
				<td>\${10 lt 5 }</td> <%-- 키워드로 제공을 한다. --%>
				<td>${10 lt 5 }</td>  <%-- lt : less than, ~보다 작다 --%>
			</tr>	
			
			<tr>
				<td>\${10 > 5 }</td>
				<td>${10 > 5 }</td> 
			</tr>
			
			<tr>
				<td>\${10 gt 5 }</td>
				<td>${10 gt 5 }</td> <%-- gt : greater than, ~보다 크다. --%>
			</tr>
			
			<tr>
				<td>\${10 <= 5 }</td>
				<td>${10 <= 5 }</td> <%--le : less equal, ~보다 작거나 같다 --%>
			</tr>
			
			<tr>
				<td>\${10 >= 5 }</td>
				<td>${10 >= 5 }</td> <%--ge : greater equal, ~보다 크거나 같다. --%>
			</tr>
			
			<tr>
				<td>\${10 != 10 }</td>
				<td>${10 != 10 }</td> <%--ne키워드는 실행이 되지만 에러표시가 떠서 권장하지 않는다. --%>
			</tr>
			
			<tr>
				<td>\${true && true }</td>
				<td>${true && true }</td> 
			</tr>
			<tr>
				<td>\${false || false }</td>
				<td>${false || false }</td> 
			</tr>
			<tr>
				<td>\${!true}</td>
				<td>${!true}</td> 
			</tr>
			<tr>
				<td>\${empty user}</td> <%--empty : 해당 attribute가 없는지 검사 --%>
				<td>${empty user}</td>  <%--즉, user라는 이름의 attribute가 없는지 검사 --%>
			</tr>
			
			<tr>
				<td>\${not empty user }</td> <%--empty : 해당 attribute가 없는지 검사 --%>
				<td>${not empty user }</td>  <%--즉, user라는 이름의 attribute가 없는지 검사 --%>
			</tr>		
			
			<tr>
				<td>\${10 % 2 == 0 ? '짝수' : '홀수' }</td>
				<td>${10 % 2 == 0 ? '짝수' : '홀수' }</td> 
			</tr>

		</tbody>
	</table>
</body>
</html>