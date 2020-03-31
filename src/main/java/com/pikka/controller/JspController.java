package com.pikka.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JspController {
	
	@RequestMapping(value="/main")
	public String main() {
		
		return "/pikka/main";
	}
	
	@RequestMapping(value = "/LockerStatus")
	public String goLockerStatus() {
		
		return "pikka/LockerStatus";
	}
	
	
	@RequestMapping(value = "/SeatStatus")
	public String goSeatStatus() {
		
		
		
		return "pikka/SeatStatus";
	}
}
