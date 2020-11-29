package com.bk.binkyung.repository;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



import com.bk.binkyung.entity.MemberDto;

@Repository
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
	
	@Override
	public void member_edit(MemberDto memberDto) {
		
		sqlSession.update("member.member_edit", memberDto);
		
		
	}


	

	//정보보기 
	@Override
	public MemberDto find_no(int member_no) {
		
		MemberDto find_no = sqlSession.selectOne("member.find_no", member_no);
		
		return find_no;
	}


	@Override
	public void member_delete(MemberDto memberDto) {
		
		sqlSession.delete("member.member_delete", memberDto);
		
	}

	@Override
	public MemberDto member_id(MemberDto memberDto) {
		
		MemberDto memberDto2 = sqlSession.selectOne("member.member_id", memberDto);
		return memberDto2;
	}

	//비밀번호 찾기 
	@Override
	public MemberDto member_find_pw(MemberDto memberDto) {
		
		MemberDto find_pw = sqlSession.selectOne("member.member_find_pw", memberDto);
		
		return find_pw;
	}

	//비밀번호 변경
	@Override
	public void member_pw_edit(MemberDto memberDto) {
		
		sqlSession.update("member.member_pw_edit", memberDto);
		
	}


	


	


	


	


	
	
	
	





}
