package com.bk.binkyung.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class BoardDto {
	private int board_no;
	private int member_no;
	private String board_title;
	private String board_content;
	private String board_date;
	private String board_edit;

}
