package com.pikka.domain;

import java.util.List;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
public class UserVO {

	private String userId;
	private String userPw;
	private String userName;
	private String userTel;
	private List<AuthVO> authList;
	
}
