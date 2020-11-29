package com.bk.binkyung.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bk.binkyung.entity.BoardDto;


@Repository
public class BoardDaoImpl implements BoardDao{

	@Autowired
	private SqlSession sqlSession;
	
	
	//글쓰기
		@Override
		public int board_no(BoardDto boardDto) {
			
			int board_no = sqlSession.selectOne("board.get_no");
			boardDto.setBoard_no(board_no);
			sqlSession.insert("board.write", boardDto);
			
			
			return board_no;
		}

	@Override
	public BoardDto detail(int board_no) {
		
		BoardDto boardDto  = sqlSession.selectOne("board.detail", board_no);
		
		return boardDto;
	}
		


	@Override
	public List<BoardDto> all_list() {
		List<BoardDto> boardDto = sqlSession.selectList("board.all_list");
		return boardDto;
	}




	

	





}
