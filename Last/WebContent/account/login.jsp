<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="../header.jsp" %>

    <div class="container">
	<form action="loginPro.jsp" method="post" >
		<div class="form-group">
			<input type="text" name="userid" id="userid"  class="form-control" placeholder="Enter UserId"  required/>
		</div>

		<div class="form-group">
			<input type="password" name="userpw"  class="form-control" placeholder="Enter Password"  required/>
		</div>

		<br/>
		<p><button type="submit" class="btn btn-primary">로그인</button></p>
		<p><a href="join.jsp"><button type="button" class="btn btn-primary">회원가입</button></a></p>
	</form>
</div>

<%@ include file="../footer.jsp" %>