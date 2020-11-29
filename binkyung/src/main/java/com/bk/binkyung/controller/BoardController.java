package com.bk.binkyung.controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bk.binkyung.entity.BoardDto;
import com.bk.binkyung.entity.MemberDto;
import com.bk.binkyung.repository.BoardDao;
import com.bk.binkyung.repository.MemberDao;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private BoardDao boardDao;
	
	@Autowired
	private MemberDao memberDao;
	
	@GetMapping("/write")
	public String write() {
		
		return "board/write";
	}
	
	@PostMapping("/write")
	public String write(@ModelAttribute BoardDto boardDto) {
		
		int board_no1 = boardDao.board_no(boardDto);
		
		return "redirect:detail?board_no="+board_no1;
	}
	
	@GetMapping("/detail")
	public String detail(@RequestParam int board_no, Model model) {
		
		BoardDto boardDto = boardDao.detail(board_no);
		model.addAttribute("boardDto", boardDto);
		
		int member_no = boardDto.getMember_no();
		
		MemberDto memberDto = memberDao.find_no(member_no);
		model.addAttribute("memberDto", memberDto);
		
		return "board/detail";
	}
	
	

	@GetMapping("/board_list")
	public String board_list(Model model) {
		List<BoardDto> boardDto = boardDao.all_list();
		model.addAttribute("boardDto",boardDto);
		
		return "board/board_list";
	}
	
	
	
}
