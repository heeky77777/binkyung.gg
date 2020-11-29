<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
	function bin(){
		var check = document.getElementById("member_id").value;
// 		var check = document.querySelector(".member_id");
		
		var idReg = /^[a-z0-9]{5,20}$/g;
		var checkReg = idReg.test(check);
		if(!checkReg){
			alert("영소문자, 숫자 5~20자리 이내로 입력해주세요");
		}
	}
	
	function pw() {
		var check = document.getElementById("member_pw").value;
		
		var idReg = /^[!@A-Za-z0-9]{5,20}$/g;
		var checkReg = idReg.test(check);
		if(!checkReg){
			alert("특수문자!또는@, 영대소문자, 숫자 5~20자리 이내로 입력해주세요");
		}
		
	}
	function namee() {
		var check  = document.getElementById("member_name").value;
		
		var idReg = /^[가-힣]{2,7}$/g;
		var checkReg = idReg.test(check);
		if(!checkReg){
			alert("한글 2~7자 이내로 입력해주세요");
		}
		
	}
	
	function nick(){
		var check = document.getElementById("member_nick").value;
		
		var idReg = /^[가-힣a-zA-Z0-9]{2,10}$/g;
		var checkReg = idReg.test(check);
		if(!checkReg){
			alert("한글, 영대소문자, 2~10자리 이내로 입력주세요");
		}
	}
	function join(){
		if(confirm("가입하시겠습니까??") == true){
			document.form.submit();
		}
		else{
			return false;
		}
	}
</script>

<form action="join" method="post"> 
    
    <div>
    	아이디 : <input type="text" name="member_id" id="member_id" onblur="bin();" class="member_id">
    </div>
    <div>
    	비밀번호 : <input type="password" name="member_pw" id="member_pw" onblur="pw();" class="member_pw">
    </div>
    <div>
    	이름 : <input type="text" name="member_name" id="member_name" onblur="namee();" class="member_name">
    </div>
    <div>
    	닉네임 : <input type="text" name="member_nick" id="member_nick" onblur="nick();">
    </div>
    <div>
    	생년월일 : <input type="date" name="member_birth">
    </div>
    <div>
    	우편번호 : <input type="text" name="member_addr">
    </div>
    <div>
    	주소 : <input type="text" name="member_extra_addr">
    </div>
    <div>
    	<input type="submit" value="가입" onclick="return join();">
    </div>    
</form>
    
    