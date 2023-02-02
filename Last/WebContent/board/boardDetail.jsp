<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<jsp:useBean id="dao" class="model.BoardDAO"/>
<c:set var="board" value="${dao.selectOne(param.idx) }"/>
        <div class="container">
            <!-- 인증 + 권한이 필요함 c:if -->
            <c:if test="${board.idx == param.idx }">
            	<a href="#" class="btn btn-warning" >수정</a>
            	<button class="btn btn-danger">삭제</button>
            </c:if>
            
            <br />
            <br />
            <h6 class="m-2">
                <p>작성자 : <i>${board.writer }</i></p> 
                <p>조회수 : <i>${board.view_count }</i></p>
            </h6>
            <br />
            <h3 class="m-2">
                <b>${board.title }</b>
            </h3>
            <hr />
            <div class="form-group">
                <div class="m-2">${board.contents }</div>
            </div>
        
            <hr />
            
            <!-- 댓글 박스 -->
            <div class="row bootstrap snippets">
                <div class="col-md-12">
                    <div class="comment-wrapper">
                        <div class="panel panel-info">
                            <div class="panel-heading m-2"><b>Comment</b></div>
                            <div class="panel-body">
                                <textarea id="reply__write__form" class="form-control" placeholder="write a comment..." rows="2"></textarea>
                                <br/>
                                <button onclick="#" class="btn btn-primary pull-right">댓글쓰기</button>
                                <div class="clearfix"></div>
                                <hr />
                                
                                <!-- 댓글 리스트 시작-->
                                <ul id="reply__list" style="padding-left: 0" class="media-list">
                                
                                        <!-- 댓글 아이템 -->
                                        <li id="reply-1" class="media">		
                                            <div class="media-body">
                                                <strong class="text-primary">홍길동</strong>
                                                <p>
                                                    댓글입니다.
                                                </p>
                                            </div>
                                            <div class="m-2">
                
                                                <i onclick="#" class="material-icons">delete</i>
        
                                            </div>
                                        </li>
                                    
                                </ul>
                                <!-- 댓글 리스트 끝-->
                            </div>
                        </div>
                    </div>
        
                </div>
            </div>
            <!-- 댓글 박스 끝 -->
        </div>
<%@ include file="../footer.jsp" %>