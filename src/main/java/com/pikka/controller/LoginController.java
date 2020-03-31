package com.pikka.controller;

import org.springframework.web.bind.annotation.PostMapping;

import com.pikka.domain.UserVO;
import com.pikka.service.UserService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
public class LoginController {

	private UserService userService;
	
	@PostMapping("/signUp")
	public void signUpProcess(UserVO vo) {
		log.info(userService.signUpUser(vo));
	}
}
