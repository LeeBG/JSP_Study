<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<c:if test="${empty user }">
	<c:redirect url="../account/login.jsp"/>
</c:if>
<div class="container">
        <form action="${cpath }/board/postPro.jsp" method="POST">
        <input type="hidden" name="writer" value="${sessionScope.user.nick}"/>
            <div class="form-group">
                <label for="title">Title:</label>
                <input type="text" class="form-control" placeholder="title" id="title" name="title">
            </div>
        	
            <div class="form-group">
                <label for="content">Content:</label>
                <textarea id="summernote" class="form-control" rows="5" id="contents" name="contents"></textarea>
            </div>
        
            <button type="submit" class="btn btn-primary">글쓰기 등록</button>
        </form>
    </div>
    <script>
        $('#summernote').summernote({
            placeholder: '${sessionScope.user.nick}님 글을 쓰세요.',
            tabsize: 2,
            height: 400
        });
    </script>
<%@ include file="../footer.jsp" %>