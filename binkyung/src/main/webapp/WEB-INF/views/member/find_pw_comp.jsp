<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

기존의 비밀번호는 <input type="text" value="${memberDto.member_pw}"> 입니다.

<div>
	<a href="${pageContext.request.contextPath}/member/member_pw_edit?member_no=${memberDto.member_no}">
		비밀번호 변경하기
	</a>
</div>