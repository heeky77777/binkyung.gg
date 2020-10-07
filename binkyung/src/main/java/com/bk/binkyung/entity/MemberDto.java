package com.bk.binkyung.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class MemberDto {
	private int member_no;
	private String member_id;
	private String member_pw;
	private String member_name;
	private String member_nick;
	private String member_birth;
	private String member_addr;
	private String member_extra_addr;
	private String member_auth;
	private String member_level;
	private String member_date;
}
