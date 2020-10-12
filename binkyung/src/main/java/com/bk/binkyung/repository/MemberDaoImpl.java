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
	public MemberDto find_id(String member_id) {
		
		MemberDto find_id =  sqlSession.selectOne("member.find_id", member_id);
		
		return find_id;
	}


	@Override
	public MemberDto member_find(MemberDto memberDto) {
		
		MemberDto member_find = sqlSession.selectOne("member.member_find", memberDto);
		
		return member_find;
	}	

}
