<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h2>게시글 목록</h2>
<c:forEach var="boardList" items="${boardDto}">
	<div>
		번호 : ${boardList.board_no} 게시글 제목 : ${boardList.board_title}
	</div>
</c:forEach>