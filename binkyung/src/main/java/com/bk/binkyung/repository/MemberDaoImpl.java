package com.bk.binkyung.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bk.binkyung.entity.MemberDto;

@Service
public class MemberDaoImpl implements MemberDao {
	
	@Autowired
	private SqlSession sqlSession;
	
		
	@Override
	public void member_join(MemberDto memberDto) {
		
		sqlSession.insert("member.member_join",memberDto);
		
	}

	@Override
	public MemberDto member_select(String member_id) {
		
		MemberDto member = sqlSession.selectOne("member.member_select", member_id);
		
		return member;
	}

	@Override
	public MemberDto member_login(MemberDto memberDto) {
		
		MemberDto member_login = (MemberDto) sqlSession.selectOne("member.member_login", memberDto);
		
		return member_login;
	}

}
