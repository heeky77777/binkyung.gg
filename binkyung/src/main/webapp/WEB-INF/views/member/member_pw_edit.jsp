<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<form action="member_pw_edit" method="post">

<!-- 	기존 비밀번호 : <input type="text" name="member_pw"> -->
	변경 할 비밀번호 : <input type="text" name="member_pw">
<!-- 	변경 할 비밀번호 확인 : <input type="text"> -->
	<input type="hidden" name="member_no" value="${memberDto.member_no}">
	<input type="submit" value="변경하기">
</form>

<a href="${pageContext.request.contextPath}">홈으로</a>