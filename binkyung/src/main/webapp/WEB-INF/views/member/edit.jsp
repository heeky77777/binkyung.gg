<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script>
	function checkpw(){
		var check = document.getElementById("member_pw").value;
		
		var idReg = /^[!@A-Za-z0-9]{5,20}$/g;
		var checkReg = idReg.test(check);
		
		if(!checkReg){
			alert("특수문자!또는@, 영대소문자, 숫자 5~20자리 이내로 입력해주세요");
		}
	}
	
	function checknick() {
		var check  = document.getElementById("member_nick").value;
		
		var idReg = /^[가-힣a-zA-Z0-9]{2,10}$/g;
		var checkReg = idReg.test(check);
		
		if(!checkReg){
			alert("한글, 영대소문자, 2~10자리 이내로 입력주세요");
		}		
	}
	
	function editpopup(){
		if(confirm("수정하시겠습니까??") == true){
			document.form.submit();
		}
		else{
			return false;
		}
	}
</script>
    
<form action="edit" method="post"> 
    <input type="hidden" name="member_no" value="${find_no.member_no}">
    
    <div>
    	아이디 : <input type="text" name="member_id" value="${find_no.member_id}" readonly>
    </div>
    <div>
    	비밀번호 : <input type="password" name="member_pw" value="${find_no.member_pw}" id="member_pw" onblur="checkpw();">
    </div>
    <div>
    	이름 : <input type="text" name="member_name" value="${find_no.member_name}" readonly>
    </div>
    <div>
    	닉네임 : <input type="text" name="member_nick" value="${find_no.member_nick}" id="member_nick" onblur="checknick();">
    </div>
    <div>
    	생년월일 : <input type="text" name="member_birth" value="${find_no.member_birth}" pattern="yyyy-MM-dd HH:mm:ss" readonly>
    </div>
    <div>
    	우편번호 : <input type="text" name="member_addr" value="${find_no.member_addr}">
    </div>
    <div>
    	주소 : <input type="text" name="member_extra_addr" value="${find_no.member_extra_addr}">
    </div>
    <div>
    	권한 : <input type="text" name="member_auth" value="${find_no.member_auth}">
    </div>
    <div>
    	등급 : <input type="text" name="member_level" value="${find_no.member_level}">
    </div>
    <div>
    	
    	<input type="submit" value="수정완료" onclick="return editpopup();">
    </div>    
</form>
	<input type="button" value="뒤로가기" onclick="history.back(-1);">
	
	<a href="${pageContext.request.contextPath}">홈으로</a>