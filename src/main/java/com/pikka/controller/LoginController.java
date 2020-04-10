package com.pikka.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pikka.domain.Locker;
import com.pikka.domain.UserVO;
import com.pikka.service.LockerService;
import com.pikka.service.UserService;
import com.pikka.validator.CustomValidator;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@Controller
public class LoginController {
	
	private UserService userService;
	private CustomValidator customValidator;
	private LockerService lockerService;
	
	@InitBinder
	public void InitBinder(WebDataBinder dataBinder) {
		dataBinder.addValidators(customValidator);
	}
	
	
	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	public String signUpProcess(@Validated UserVO vo, BindingResult result) {
		log.info(vo);
		if(result.hasErrors()) return "/pikka/SignUp";
		log.info("==== 회원가입 유효성 검사 완료====");
		if(userService.signUpUser(vo)) 	return "redirect:/";
			
		return "pikka/customLogin";
	}
	
	@RequestMapping(value = "/user/modify", method = RequestMethod.POST)
	public String modifyProcess(@Validated UserVO vo) {
		log.info(vo);
		userService.modifyUser(vo);
		return "pikka/customLogin";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String deleteUser(String userId) {
		log.info(userId);
		userService.deleteUser(userId);
		return "pikka/customLogin";
	}
	
//	@PostMapping("/delete")
//	public String deleteProcess(String userId) {
//		log.info("삭제할 유저의 ID : " + userId);
//		
//		
//		/* 라커서비스 Nullpointer exception 예외처리 필요
//		 * 
//		 * 
//		*/
//		/*
//		 * lockerService.updateLocState(new
//		 * Locker(lockerService.getTicket(userId).getLockerNo(),0));
//		 */
//		
//		log.info("유저 삭제 여부 : " + userService.deleteUser(userId));
//		return "redirect:/logout";
//	}
	
	// 아이디 중복 검사
	@GetMapping("/user/search")
	public String searcchProcess(String userId) {
		
		return "abcd";
	}
}
