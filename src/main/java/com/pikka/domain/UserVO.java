package com.pikka.domain;

import java.util.List;

import javax.validation.constraints.NotNull;

import org.springframework.validation.annotation.Validated;

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
