package com.bk.binkyung.repository;

import java.util.List;

import com.bk.binkyung.entity.BoardDto;

public interface BoardDao {
	
	int board_no(BoardDto boardDto);
	
	//반환되는형태  resultType, 이름, 뭘로 조회할지 parameterType
	BoardDto detail(int board_no);
	
	List<BoardDto> all_list();
	
}
