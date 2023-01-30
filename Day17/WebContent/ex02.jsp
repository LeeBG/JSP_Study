<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
</head>
<body>
	<h1>JSTL</h1>
	<p>JSP Standart Library</p>
	<hr/>
	
	<ul>
		<li>커스텀 태그 : 필요한 자바 로직을 태그로 작성하는 방식을 의미</li>
		<li>커스텀 태그 라이브러리 : 커스텀 태그를 다른이가 이용할 수 있게 배포한 형태를 의미</li>
		<li>커스텀이다 보니 표준이 없어서 혼란을 빚음</li>
		<li>이를 표준화 해서 배포한 형태를 JSTL이라고한다.</li>
		<li>JSTL은 EL과 같이 사용할 시 시너지가 좋다.</li>		
	</ul>
	
	<h3>JSTL 종류</h3>
	<ol>
		<li>core : 핵심, Attribute 생성/ 제거, 제어문, redirect 등을 지원</li>
		<li>sql  : sql. DB 조회/생성/삭제/수정을 제공(DAO가 더 좋은 방법이라 잘 안쓰임)</li>
		<li>format : format. 시간/숫자/단위를 지정</li>
		<li>xml  : xml파일을 조작할 수 있게 지원</li>
		<li>functions : 함수. 다양한 기능을 제공, 주로 문자열 처리를 자주 사용</li>
	</ol>
</body>
</html>