package com.bk.binkyung.repository;

import com.bk.binkyung.entity.MemberDto;

public interface MemberDao {
	
	void member_join(MemberDto memberDto);

	MemberDto find_id(String member_id);
	
	MemberDto member_find(MemberDto memberDto);
	
	void member_edit(MemberDto memberDto);
	
	MemberDto find_no(int member_no);
	
	void member_delete(MemberDto memberDto);
	
	MemberDto member_id(MemberDto memberDto);
	
	MemberDto member_find_pw(MemberDto memberDto); //비밀번호 찾기
	
	void member_pw_edit(MemberDto memberDto); //비밀번호 변경 
	
	
	
	
	
}
