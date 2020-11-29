<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 당신의 아이디는 <input type="text" value="${memberDto.member_id}"> 입니다
 
 <br>
 
 <a href="${pageContext.request.contextPath}/member/find_pw">
 	<button>비밀번호 찾기</button> 
 </a>
 
 <a href="${pageContext.request.contextPath}/member/login">
 	<button>로그인</button>
 </a>
 
 <a href="${pageContext.request.contextPath}">
 	<button>홈으로</button>
 </a>
 