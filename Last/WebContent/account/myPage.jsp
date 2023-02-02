<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<!-- 마이페이지에 접근할 권한이 비로그인자는 없다. -->
<c:if test="${empty user }">
	<c:redirect url="login.jsp"/>
</c:if>

<div class="container">
	<h3>${user.nick }님 페이지</h3>
	<table class="table table-striped">
	<caption>${user.nick } 정보</caption>
   	<thead/>
    <tbody>
      <tr>
      	<th>IDX</th>
      	<td>${user.idx }</td>
      </tr>
      <tr>
      	<th>아이디</th>
      	<td>${user.userid }</td>
      </tr>
      <tr>
      	<th>패스워드</th>
      	<td>${user.userpw }</td>
      </tr>
      <tr>
      	<th>닉네임</th>
      	<td>${user.nick }</td>
      </tr>
      <tr>
      	<th>이름</th>
      	<td>${user.name }</td>
      </tr>
      <tr>
      	<th>이메일</th>
      	<td>${user.email }</td>
      </tr>
      <tr>
      	<th>가입일자</th>
      	<td>${user.join_date }</td>
      </tr>
    </tbody>
  </table>
  <button class="btn btn-primary" onclick="onClick()">이전 페이지</button>
</div>
<script>
	function onClick(){
		history.go(-1);
	}
</script>
<%@ include file="../footer.jsp" %>
