<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<div class="container">
        <form action="joinPro.jsp" method="post">
            <div class="d-flex justify-content-end">
                <button type="button" class="btn btn-info">아이디 중복체크</button>
            </div>
            <div class="form-group">
                <input type="text" name="userid" id="userid" class="form-control" placeholder="Enter UserId"  required/>
            </div>
    
            <div class="form-group">
                <input type="password" name="userpw"  id="userpw" class="form-control" placeholder="Enter Userpw"  required/>
            </div>
            
            <div class="d-flex justify-content-end">
                <button type="button" class="btn btn-info">닉네임 중복체크</button>
            </div>
            
            <div class="form-group">
                <input type="text"  name="nick"  id="nick" class="form-control" placeholder="Enter Nick"  required/>
            </div>
            
            <div class="form-group">
                <input type="text"  name="name"  id="name" class="form-control" placeholder="Enter Name"  required/>
            </div>
            
            <div class="form-group">
                <input type="email"  name="email"  class="form-control" placeholder="Enter Email" required />
            </div>
            
            <br/>
            <button type="submit" class="btn btn-primary">회원가입완료</button>
        </form>
    </div>
<%@ include file="../footer.jsp"%>