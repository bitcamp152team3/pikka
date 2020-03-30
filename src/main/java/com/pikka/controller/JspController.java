package com.pikka.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JspController {
	
	@RequestMapping(value="/main")
	public String main() {
		
		return "/pikka/main";
	}
	
	@RequestMapping(value="/login")
	public String login() {
		
		return "/pikka/Login";
	}
	
	@RequestMapping(value="/sign")
	public String signup() {
		
		return "/pikka/SignUp";
	}
	
	@RequestMapping(value="/mypage")
	public String mypage() {
		
		return "/pikka/pageMy";
	}
	
	@RequestMapping(value="/seat")
	public String seat() {
		
		return "/pikka/SeatStatus";
	}
	
	@RequestMapping(value="/exseat")
	public String exseat() {
		
		return "/pikka/exseat";
	}
	
	@RequestMapping(value="/locker")
	public String locker() {
		
		return "/pikka/LockerStatus";
	}
}
