package com.pikka.controller;

import java.security.Principal;
import java.time.LocalTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pikka.domain.SeatTicket;
import com.pikka.service.SeatService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping
@Log4j
public class SeatController {

	@Autowired
	private SeatService service;
	
	@RequestMapping(value = "/SeatStatus")
	public String goSeatStatus(Model model, SeatTicket seatTicket) {
		log.info("-------------SeatStatus--------------");
		// LocalTime time = LocalTime.now();
				
		service.delete();
		if(service.delete()) {
			service.updateZero(seatTicket);		
		}
		
		service.updateCurrent(seatTicket);
		model.addAttribute("seat", service.getUseList());
	
		return "/pikka/SeatStatus";

	}

	/*
	 * @RequestMapping(value="/SeatTicket") public String SeatTicket(Model model) {
	 * log.info("-------------SeatTicketType--------------");
	 * model.addAttribute("seatticket", service.getSeatTicketInfo()); return
	 * "/pikka/SeatTicket"; }
	 */

	@PostMapping(value = "/SeatTicket")
	public String SeatTicket(Model model, String seatNo) {
		model.addAttribute("seatNo", seatNo);
		return "/pikka/SeatTicket";
	}

	/*@PostMapping(value = "/")
	public String insertTicket(Model model, Principal principal, SeatTicket seatTicket) {		
		
		seatTicket.setUserId(principal.getName());
		//service.insert(seatTicket);
		//service.update(seatTicket);
		return "/pikka/main";
	}*/
	
	@PostMapping("/cardPaySeat")
	public String cardPay(Model model, SeatTicket seatTicket, Principal principal) {
		// 결제성공 -> 이용권 추가
		seatTicket.setUserId(principal.getName());	
		service.insert(seatTicket);			
		service.updateOne(seatTicket);	
		model.addAttribute("ticket", service.getTicket(seatTicket.getUserId()));
		log.info(seatTicket);
		return "pikka/carPaySuccessSeat";
	}
	


}
