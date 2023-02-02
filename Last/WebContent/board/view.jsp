<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
	<jsp:useBean id="dao" class="model.BoardDAO"/>
	<c:set var="map" value="${dao.selectAllPage(param.page) }"/>
	<%--
	<c:set var="list" value="${dao.selectAll(param.page) }"/>
	<c:set var="allcount" value="${dao.boardCount() }"/>
	 --%>
	<c:set var="list" value="${map['list'] }"/>
	<c:set var="pg" value="${map['pg'] }"/>
	
	 
<div class="container">
    <div class="m-2">
        <form class="form-inline d-flex justify-content-end" action="#">
            <input type="hidden" name="***" value="search" /> 
            <input type="hidden" name="page" value="0" /> 
            <input type="text" name="keyword" class="form-control mr-sm-2" placeholder="Search">
            <button class="btn btn-primary m-1">검색</button>
        </form>
        </div>
        <!-- page -->
        <div class="progress col-md-12 m-2">
            <div class="progress-bar" style="width: ${(param.page/pg.totalPage)*100}%"></div>
        </div>
        
        <!-- JSTL foreach문을 써서 뿌리세요. el표현식과 함께 -->
        <c:forEach var="board" items="${list}">
	        <div class="card col-md-12 m-2 rounded">
	            <div class="card-body">
	                <h4 class="card-title">${board.title }</h4>
	            </div>
	            <div class="card-body d-flex justify-content-between">
	            	<a href="boardDetail.jsp?idx=${board.idx }" class="btn btn-primary">상세보기</a>
	            	<h4 style="text-align: right;">작성자: ${board.writer }</h4>
	            	<h4>idx= ${board.idx }</h4>
	            </div>       
	        </div>     
		</c:forEach>
        
        <br />
        
        <div class="page">
	    	<ul>
	    		<c:forEach var="i" begin="${pg.begin }" end="${pg.end }">
	    		<li>
		    		<c:if test="${param.page==i }">
		    			<a style="color:red" href="${cpath }/board/view.jsp?page=${i }">${i }</a>
		    		</c:if>
		    		<c:if test="${param.page!=i }">
		    			<a href="${cpath }/board/view.jsp?page=${i }">${i }</a>
		    		</c:if>
	    		</li>
	    		</c:forEach>
	    	</ul>
    	</div>
        
        <br />
        
        <ul class="pagination justify-content-center">
            <!-- 비활성화 <li class="page-item disabled"><a class="page-link" href="#">Next</a></li> -->
            <c:if test="${param.page <= 1 }">
            	<li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
            </c:if>
            <c:if test="${param.page > 1 }">
            	<li class="page-item"><a class="page-link" href="${cpath }/board/view.jsp?page=${param.page - 1}">Previous</a></li>
            </c:if>
            
            <!-- 마지막 페이지 <li class="page-item disabled"><a class="page-link" href="#">Next</a></li> -->
            <c:if test="${param.page < pg.totalPage }">
            <li class="page-item"><a class="page-link" href="${cpath }/board/view.jsp?page=${param.page - 1}">Next</a></li>
			</c:if>
			<c:if test="${param.page >= pg.totalPage }">
            <li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
			</c:if>
           
        </ul>
	</div>
	
    
<%@ include file="../footer.jsp" %>
    