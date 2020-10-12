package com.bk.binkyung.repository;

import com.bk.binkyung.entity.MemberDto;

public interface MemberDao {
	
	void member_join(MemberDto memberDto);

	MemberDto find_id(String member_id);
	
	MemberDto member_find(MemberDto memberDto);
}
