package com.bk.binkyung.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

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
			return "redirect:/member/joincomp";
			
		}
		else {			
			return "redirect:/member/joinerror";
		}
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
	
	//정보보기
	@GetMapping("/mypage")
	public String mypage(@RequestParam int member_no, Model model) {
		
		MemberDto memberDto = memberDao.find_no(member_no);
		
		model.addAttribute("memberDto", memberDto);
		
		
		return "member/mypage";
	}
	
	
	
	//정보 수정
	@GetMapping("/edit")
	public String edit(@RequestParam int member_no, Model model) {
		MemberDto find_no = memberDao.find_no(member_no);
		model.addAttribute("find_no",find_no);
		
		return "member/edit";
	}
	
	//정보수정
	@PostMapping("/edit")
	public String edit(@ModelAttribute MemberDto memberDto) {
		
		memberDao.member_edit(memberDto);
		
		return "member/mypage";
	}
	
	//회원탈퇴
	@PostMapping("/delete")
	public String delete(@ModelAttribute MemberDto memberDto, HttpSession session) {
		
		memberDao.member_delete(memberDto);
		session.removeAttribute("userinfo");
		
		
		return"redirect:/";
	}
	
	
	
	//중복가입 에러
	@GetMapping("/joinerror")
	public String joinerror() {
				
		return"member/joinerror";
	}
	
	//가입을 축하합니다
	@GetMapping("/joincomp")
	public String joincomp() {
		
		return "member/joincomp";
	}
	
	//아디찾기
	@GetMapping("/find_id")
	public String find_id() {
		
		
		return"member/find_id";
	}
	
	//아이디찾기
	@PostMapping("/find_id")
	public String find_id(@ModelAttribute MemberDto memberDto, Model model) {
		
		MemberDto memberDto2 = memberDao.member_id(memberDto);
		
		model.addAttribute("memberDto",memberDto2);
		
		
		
		return"member/find_id_comp";
	}
	
	//비밀번호 찾기
	@GetMapping("/find_pw")
	public String find_pw () {
		
		return"member/find_pw";
	}
	
	//비밀번호 찾기
	@PostMapping("/find_pw")
	public String find_pw(@ModelAttribute MemberDto memberDto, Model model) {
		
		MemberDto find_pw = memberDao.member_find_pw(memberDto); //회원정보 찾고 비밀번호를 담아!!!
		
		model.addAttribute("memberDto", find_pw); //찾은 비밀번호 정보를 memberDto에 담아!!!! 
		
		return "member/find_pw_comp";
	}
	
	//비밀번호 변경
	@GetMapping("/member_pw_edit")
	public String member_pw_edit(@RequestParam int member_no, Model model) {
		
		MemberDto member_no1 = memberDao.find_no(member_no);
		
		model.addAttribute("memberDto", member_no1);
		
		
		return "member/member_pw_edit";
	}
	
	//비밀번호 변경
	@PostMapping("/member_pw_edit")
	public String member_pw_edit(@ModelAttribute MemberDto memberDto) {
		
						
		memberDao.member_pw_edit(memberDto);	
		
		
		return "member/change_pw_comp";
	}
	
		
	@GetMapping("/popup")
	public String popup() {
		
		return"member/popup";
	}
	
	
}
