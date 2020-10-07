package com.bk.binkyung.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private SqlSession sqlSession;
	
	@GetMapping("/join")
	public String join (){
		
		return "/member/join";
	}
	

	
}
