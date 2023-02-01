<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	<jsp:useBean id="dao" class="model.BoardDAO"/>
	<c:set var="list" value="${dao.selectAll() }"/>
	
	<%-- 스코프 지정을 안했으면 attribute에 넣음--%>
    <main>
        <article>
            <img src="src/back.png" width="100%">
        </article>

        <article>
            <h3>최신글</h3>
            <table class="board">
                <tr>
                    <th>글번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일자</th>
                    <th>조회수</th>
                </tr>
                <c:forEach var="row" items="${list }">
	                <tr>
	                	<td>${row.idx }<td>
	                	<td>${row.title }<td>
	                	<td>${row.writer }<td>
	                	<td>${row.write_date }<td>
	                	<td>${row.view_count }<td>
	                </tr>
                </c:forEach>
            </table>
            <br/>
            <button>글작성</button>
        </article>
    </main>
<%@ include file="footer.jsp" %>