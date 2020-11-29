<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script>
	function checkid(){
		var check = document.getElementById("member_id").value;
		
		var idReg = /^[a-z0-9]{3,15}$/g;
		var checkReg = idReg.test(check);
		
		if(!checkReg){
			alert("영소문자 숫자포함 3~15자 이내로 입력하세요");
		}
	}
	
	function checkpw(){
		var check = document.getElementById("member_pw").value;
		
		var idReg = /^[!@A-Za-z0-9]{3,15}$/g;
		var checkReg = idReg.test(check);
		
		if(!checkReg){
			alert("특수문자 !@# 영대소문자 숫자 포함한 3~15자 이내로 입력하세요");
		}
	}
	
	

</script>


    <form action="login" method="post">

	<div>    
    	아이디 : <input type="text" name="member_id" id="member_id" onblur="checkid();">
    </div>
    <div>	
    	비밀번호 : <input type="password" name="member_pw" id="member_pw" onblur="checkpw();">
    </div>	
    	<input type="submit" value="로그인">
    	
    	<a href="${pageContext.request.contextPath}/member/find_id">
    		아이디 찾기
    	</a>
    	
    	<a href="${pageContext.request.contextPath}/member/find_pw">
    		비밀번호 찾기
    	</a>
    	
    	<input type="submit" value="비밀번호찾기">
    </form>
    	<a href="${pageContext.request.contextPath}">
    		<button>홈으로</button>
    	</a>