package com.pikka.domain;

import java.util.List;

import lombok.Data;

@Data
public class UserVO {

	private String userId;
	private String userPw;
	private String userName;
	private String userTel;
	private List<AuthVO> authList;
}
