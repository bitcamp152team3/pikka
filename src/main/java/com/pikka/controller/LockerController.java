package com.pikka.controller;

import java.security.Principal;
import java.time.LocalDate;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pikka.domain.Locker;
import com.pikka.domain.LockerTicket;
import com.pikka.domain.PayVO;
import com.pikka.service.KakaoPay;
import com.pikka.service.LockerService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@AllArgsConstructor
@Log4j
public class LockerController {
	
	private LockerService service;
	private PayVO pay;
	private KakaoPay kakaopay;
	
	@GetMapping("/errors")
	public String defaultError() {
		return "/pikka/errors";
	}

	//사물함 현황 클릭시
	@RequestMapping(value = "/LockerStatus")
	public String goLockerStatus(Model model) {
		log.info("------lockerStatus-------");
		//사물함 만료된 것들 있으면 status변경
		LocalDate date = LocalDate.now();
		String today = date.minusDays(1).toString();
		List<String> endList = service.getEndLocker(today);
		
		Locker locker = new Locker();
		locker.setLockerStatus(0);
		
		for (String list : endList) {
			locker.setLockerNo(list);
			service.updateLocState(locker);
			service.deleteLocTicket(locker.getLockerNo());
		}
		
		return "/pikka/LockerStatus";
	}

	
	@PostMapping(value = "/buyTicket")
	public String buyTicket(Model model, String locNo) {
		model.addAttribute("locNo", locNo);
		return "/pikka/buyLockerTicket";
	}


	/* --------------------카드 결제 관련 --------------------- */
	@PostMapping("/cardPay")
	public String cardPay(PayVO pays, Model model) {
		// 결제성공 -> 이용권 추가
		service.registerTicket(new LockerTicket(pays.getLocNo(), pays.getUserId(),
				pays.getLocType(), Integer.parseInt(pays.getLocPrice())));
		
		service.updateLocState(new Locker(pays.getLocNo(),1));
		
		model.addAttribute("ticket", service.getTicket(pays.getUserId()));
		return "pikka/carPaySuccess";
	}

	/* --------------------카카오 페이 관련 --------------------- */
	@PostMapping("/kakaoPay")
	public String kakaoPay(PayVO pays) {
		this.pay = pays;
		log.info("kakaoPay post................................");
		pays.setUserId(pays.getUserId().trim());
		return "redirect:" + kakaopay.kakaoPayReady(pays);
	}

	@GetMapping("/kakaoPaySuccess")
	public String kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model, Principal principal) {
		log.info("kakaoPaySuccess get.................pg_token : " + pg_token);
		model.addAttribute("info", kakaopay.kakaoPayInfo(pg_token));

		// 결제성공 -> 이용권 추가
		service.registerTicket(new LockerTicket(pay.getLocNo(), pay.getUserId(),
				pay.getLocType(), Integer.parseInt(pay.getLocPrice())));
		service.updateLocState(new Locker(pay.getLocNo(),1));
		model.addAttribute("ticket", service.getTicket(principal.getName()));
		return "pikka/kakaoPaySuccess";
	}

}
