package com.bk.binkyung.repository;

import com.bk.binkyung.entity.MemberDto;

public interface MemberDao {
	
	void member_join(MemberDto memberDto);
	
	MemberDto member_select(String member_id);
	
	MemberDto member_login(MemberDto memberDto);
}
