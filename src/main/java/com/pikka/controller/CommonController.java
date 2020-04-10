package com.pikka.controller;

import java.security.Principal;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pikka.service.LockerService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@AllArgsConstructor
@Controller
@Log4j
public class CommonController {
	
	private LockerService service;
	
	@RequestMapping(value = "/aa")
	public String boardGet() {
		return "/pikka/boardGet";
	}
	@RequestMapping(value = "/bb")
	public String boardList() {
		return "/pikka/boardList";
	}
	@RequestMapping(value = "/cc")
	public String boardModify() {
		return "/pikka/boardModify";
	}
	@RequestMapping(value = "/dd")
	public String boardRegister() {
		return "/pikka/boardRegister";
	}

	@RequestMapping(value = "/")
	public String main() {
		return "/pikka/main";
	}

	@GetMapping("/SignUp")
	public String signUp() {
		return "/pikka/SignUp";
	}

	@GetMapping("/myPage")
	public String nav(Model model, Principal principal) {
		log.info("�씫而ㅽ떚耳� =============>"+ service.getTicket(principal.getName()));
		//�씫而ㅽ떚耳� 異붽�
		model.addAttribute("locTicket", service.getTicket(principal.getName()));
		
		
		return "/pikka/myPage";
	}

	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) {
		log.info("access denied :    " + auth);

		model.addAttribute("msg", "access Denied");

	}

	@GetMapping("/customLogin")
	public String loginInput(String error, String logout, Model model) {
		log.info("error : " + error);
		log.info("logout : " + logout);

		if (error != null)
			model.addAttribute("error", "LoginError Check Your account");
		if (logout != null)
			model.addAttribute("logout", "LoginError Check Your account");

		return "pikka/customLogin";
	}

}
