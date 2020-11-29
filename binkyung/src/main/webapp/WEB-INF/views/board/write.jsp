<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form action="write" method="post">

    <h2>게시글 등로로로로로옥!</h2>
    
  <input type="hidden" name="member_no" value="${userinfo.member_no}">
    
    제 목  : <input type="text" name="board_title" >
    
    내 용  : <input type="text" name="board_content">
    
    <input type="submit" value="등록">
    
</form>