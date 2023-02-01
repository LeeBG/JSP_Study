<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	<jsp:useBean id="dao" class="model.BoardDAO"/>
	<c:set var="list" value="${dao.selectAll() }"/>
	<c:set var="user" value="${user }"/>
	<%-- 스코프 지정을 안했으면 attribute에 넣음--%>
	
    <div class="container">
    	<article>
            <img src="src/back.png" width="100%">
        </article>
        <div class="m-2">
            <form class="form-inline d-flex justify-content-end"
                action="#">
                <input type="hidden" name="***" value="search" /> 
                <input type="hidden" name="page" value="0" /> 
                <input type="text" name="keyword" class="form-control mr-sm-2" placeholder="Search">
                <button class="btn btn-primary m-1">검색</button>
            </form>
        </div>
        <!-- page -->
        <div class="progress col-md-12 m-2">
            <div class="progress-bar" style="width: 50%"></div>
        </div>
        
        <!-- JSTL foreach문을 써서 뿌리세요. el표현식과 함께 -->
        <c:forEach var="board" items="${list}">
	        <div class="card col-md-12 m-2 rounded">
	            <div class="card-body">
	                <h4 class="card-title">${board.title }</h4>
	            </div>
	            <div class="card-body d-flex justify-content-between">
	            	<a href="#" class="btn btn-primary">상세보기</a>
	            	<h4 style="text-align: right;">작성자: ${board.writer }</h4>
	            </div>       
	        </div>
	        
		</c:forEach>
        
        <br />
        <ul class="pagination justify-content-center">
            <!-- 비활성화 <li class="page-item disabled"><a class="page-link" href="#">Next</a></li> -->

            <!-- 첫번째 페이지 <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li> -->
            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
            <!-- 마지막 페이지 <li class="page-item disabled"><a class="page-link" href="#">Next</a></li> -->
            <li class="page-item"><a class="page-link" href="#">Next</a></li>
        </ul>
    </div>
<%@ include file="footer.jsp" %>