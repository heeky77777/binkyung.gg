<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<form action="detail" method="post">

	<input type="text" name="member_no" value="${memberDto.member_id}">
		
	제목 : <input type="text" name="board_title" value="${boardDto.board_title}"><br>
	
	내용 : <input type="text" name="board_content" value="${boardDto.board_content}"><br>
	
	<a href="${pageContext.request.contextPath}">홈으로</a>	

</form>