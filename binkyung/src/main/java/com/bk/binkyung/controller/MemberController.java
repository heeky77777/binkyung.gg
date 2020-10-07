package com.bk.binkyung.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bk.binkyung.entity.MemberDto;
import com.bk.binkyung.repository.MemberDao;

@Controller
@RequestMapping("/member")
public class MemberController {	
	
	@Autowired
	private MemberDao memberDao;
	
	@GetMapping("/join")
	public String join (){
		
		return "/member/join";
	}
	@PostMapping("/join")
	public String join(@ModelAttribute MemberDto memberDto, @RequestParam String member_id) {
		
		MemberDto find_id = memberDao.member_select(member_id);
		
				
		if(find_id == null) {
		
		memberDao.member_join(memberDto);
		
		}
		else {
			
		}
		
		return "redirect:/member/join";
	}
	
	@GetMapping("/login")
	public String login() {
		
		return "/member/login";
	}
	
	@PostMapping("/login")
	public String login(@ModelAttribute MemberDto memberDto, HttpSession session) {
				
				
		MemberDto member_login = memberDao.member_login(memberDto);
		
		if(member_login != null) {
			session.setAttribute("userinfo", member_login);
		}
		
		return "redirect:/";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		
		session.removeAttribute("userinfo");
		
		return "redirect:/";
	}
	
	
	
	
}
