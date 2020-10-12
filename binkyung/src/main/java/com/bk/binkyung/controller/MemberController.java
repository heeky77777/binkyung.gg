package com.bk.binkyung.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bk.binkyung.entity.MemberDto;
import com.bk.binkyung.repository.MemberDao;

import aj.org.objectweb.asm.Attribute;

@Controller
@RequestMapping("/member")
public class MemberController {	
	
	
	@Autowired
	private MemberDao memberDao;
	
	@GetMapping("/join")
	public String join() {
		
		return "/member/join";
	}
	
	@PostMapping("/join")
	public String join(@ModelAttribute MemberDto memberDto, @RequestParam String member_id) {
		
		//중복확인을 하는 단일조회 코드
		//1. 단일조회를 먼저하여 디비에 정보가 있는지 확인을한다.
		MemberDto find_id = memberDao.find_id(member_id); 
		
		//2. 정보가 있으면 가입을 시키지 않는다.
		//3. 정보가 없으면 가입을 시킨다.		
		if(find_id == null) {
			
			memberDao.member_join(memberDto);
			
		}

		return "redirect:/member/join";
	}
	
	
	@GetMapping("/login")
	public String login() {		
		
		return "/member/login";
	}
	
	//로그인 
	@PostMapping("/login")
	public String login(@ModelAttribute MemberDto memberDto, HttpSession session) {
		
		//1. 디비에 아디와 비밀번호를 조회한다 (디비에 정보가 있는지 없는지 확인용)
		MemberDto member_find  = memberDao.member_find(memberDto);
		//2. 정보가 있으면 로그인(멤버 정보를 userinfo에 담는다 로그인!!)
		if(member_find != null) {
			session.setAttribute("userinfo", member_find); //로그인하는 구문 (세션에 조회한 대상의 회원정보 저장시키는것!)

			return "redirect:/";
		}
		else {
			return "member/join";
		}
	}
	
	
	//로그아웃 
	@GetMapping("/logout")
	public String logout(@ModelAttribute MemberDto memberDto, HttpSession session) {
		
		session.removeAttribute("userinfo");
		
		return "redirect:/";
	}
	
		
}
