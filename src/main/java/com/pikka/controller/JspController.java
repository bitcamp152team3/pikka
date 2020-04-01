package com.pikka.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.pikka.service.LockerService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Controller
@AllArgsConstructor
@Log4j
public class JspController {
	
	private LockerService service;

	
	@RequestMapping(value = "/LockerStatus")
	public String goLockerStatus(Model model) {
		
		log.info("-------------LockerStatus--------------");
		log.info(service.getLockerList());
		
		model.addAttribute("LocList",service.getLockerList());
		//만료된 사물함 있는지 체크하고 있으면 status변경해줘야함
		//사물함 정보를 가져와서 뿌려야함
		return "/pikka/LockerStatus";

	}

	@RequestMapping(value="/buyTicket")
	public String buyTicket() {
		
		return "/pikka/buyTicket";
	}
	
	
	@RequestMapping(value="/main")
	public String main() {
		
		return "/pikka/main";
	}
}
