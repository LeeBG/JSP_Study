<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
<style>
	fieldset {
		display: inline-block;
	}
	
	button{
		width: 100%;
	}
</style>
</head>
<body>
	<h1>input의 타입</h1>
	<hr/>
	
	<fieldset>
		<legend>input타입</legend>
		<form action="ex01_result.jsp">	
			<!-- required는 필수 입력을 말하고 입력하지 않고 버튼을 누르면 전송이 안된다. -->
			<p><input name="id" placeholder="ID 입력" required></p>
			
			<%-- password 타입 : 텍스트를  가려준다. 복사가 안된다(보안상) --%>
			<p><input name="pw" type="password" placeholder="PW 입력" required/></p>
			
			<%-- email타입 : 텍스트에 @가 있는지 검사를 해준다. --%>
			<p><input name="email" type="email" placeholder="이메일 입력"/></p>
			
			
			<%-- date타입 : 날짜 입력 --%>
			<p><input name="date" type="date"></p>
			
			
			<%-- radio 버튼 타입 : 다중 택일 선택지. name이 같아야 같은 그룹이다. --%>
			<p>
				<%-- value는 선택시 전달할 데이터이다. --%>
				<input name="gender" type="radio" value="남"> 남성
				<input name="gender" type="radio" value="여"> 여성
				<input name="gender" type="radio" value="기타" checked> 기타
			</p>
			
			
			<%--checkbox : 다중 선택지. name이 같아야 한다. --%>
			<p>
				<input name="hobby" type="checkbox" value="game"> 게임
				<input name="hobby" type="checkbox" value="movie"> 영화
				<input name="hobby" type="checkbox" value="book"> 독서
				<input name="hobby" type="checkbox" value="music"> 음악
				<input name="hobby" type="checkbox" value="nohobby" checked> 취미없음
			</p>
			
			<%-- select 태그 : 선택지를 생성하는 태그 --%>
			<p>
				<select name="major">
					<%-- option : 선택지. value의 데이터가 전송되고, 없으면 태그 안에 같이 전송된다. --%>
					<option value="com">컴퓨터공학과</option>
					<option value="elec">전자공학과</option>
					<option value="mach">기계공학과</option>
					<option value="kor">국어국문학과</option>
					<option value="mana">경영학과</option>
					<option value="inter">국제통상과</option>
					<option value="chul">철학과</option>
				</select>
			</p>
			
			<%-- file 타입 : 파일의 이름을 전송. 실제 파일을 전송하려면 파일업로드라는 구문을 따로 배워야한다. --%>
			<p><input name="file" type="file"></p>
			
			<%-- textarea태그 : 여러줄을 작성할 수 있는 태그 --%>
			<p><textarea name="information" rows="15" cols="30"></textarea></p>
			
			
			<button type="submit">전송</button>
		</form>
	</fieldset>
</body>
</html>