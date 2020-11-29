<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      
      
<script>
	 function popup(){
		 if(confirm("정말 탈퇴하시겠습니까??") == true){
			 document.form.submit();
		 }
		 else{
			 return false;
		 }
	 }
</script>      
      
     <form action="delete" method="post"> 
      
    <div>
    	아이디 : <input type="text" name="member_id" value="${memberDto.member_id}" readonly>
    </div>
    <div>
    	이름 : <input type="text" name="member_name" value="${memberDto.member_name}" readonly>
    </div>
    <div>
    	닉네임 : <input type="text" name="member_nick" value="${memberDto.member_nick}"  readonly>
    </div>
    <div>
    	생년월일 : <input type="text" name="member_birth" value="${memberDto.member_birth}" pattern="yyyy-MM-dd HH:mm:ss" readonly>
    </div>
    <div>
    	우편번호 : <input type="text" name="member_addr" value="${memberDto.member_addr}"  readonly>
    </div>
    <div>
    	주소 : <input type="text" name="member_extra_addr" value="${memberDto.member_extra_addr}" readonly>
    </div>
    <div>
    	권한 : <input type="text" name="member_auth" value="${memberDto.member_auth}" readonly>
    </div>
    <div>
    	등급 : <input type="text" name="member_level" value="${memberDto.member_level}" readonly>
    </div>
    <div>
    	<input type="hidden" name="member_no" value="${memberDto.member_no}">
    	<input type="submit" value="탈퇴" onclick="return popup();">
    	<a href="${pageContext.request.contextPath}/member/edit?member_no=${userinfo.member_no}">수정</a>
    </div>    
    
    </form>
    <input type="button" value="←뒤로가기" onclick="history.back(-1);"> <!--뒤로가기 -->
    <input type="button" value="앞으로가기→" onclick="history.foward(+1);"> <!--앞으로가기 -->
    
    <a href="${pageContext.request.contextPath}">
		홈으로
    </a>
