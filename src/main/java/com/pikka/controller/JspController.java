package com.pikka.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class JspController {
	
	@RequestMapping(value="/")
	public String main() {
		
		return "/pikka/main";
	}
	
	@GetMapping("/SignUp")
	public String signUp() {
		return "/pikka/SignUp";
	}
	
	@GetMapping("/SeatStatus")
	public String seatStatus() {
		return "/pikka/seatStatus";
	}
}
