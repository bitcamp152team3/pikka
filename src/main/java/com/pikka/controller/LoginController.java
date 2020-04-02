package com.pikka.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pikka.domain.UserVO;
import com.pikka.service.UserService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@Controller
public class LoginController {

	private UserService userService;
	
	@InitBinder
	public void InitBinder(WebDataBinder dataBinder) {
		
	}
	
	
	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	public String signUpProcess(UserVO vo, BindingResult theBindingResult) {
		log.info(vo);
		if(userService.signUpUser(vo)) 	return "redirect:/";
			
		return "pikka/customLogin";
	}
}
