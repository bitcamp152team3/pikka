package com.pikka.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JspController {
	
	@RequestMapping(value="/main")
	public String main() {
		
		return "/pikka/main";
	}
}
