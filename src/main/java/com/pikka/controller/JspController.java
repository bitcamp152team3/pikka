package com.pikka.controller;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pikka.domain.Locker;
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

		// 만료된 사물함 있는지 체크하고 있으면 status변경해줘야함
		log.info("종료된 사물함 있는지 체크 ---->service.getEndLocker(today)");
		LocalDate date = LocalDate.now();
		String today = date.minusDays(1).toString(); // 사물함 만료일이 어제까지인 것들은 활성화 시키기
		List<String> endList = service.getEndLocker(today);
		Locker locker = new Locker();
		locker.setLockerStatus(0);
		for (String list : endList) {
			log.info("만료된 사물함 번호:" + list);
			locker.setLockerNo(list);
			service.updateLocState(locker);
		}

		// 사물함 List 전달
		log.info("사물함 List 가져오기 ----> service.getLockerList()");
		model.addAttribute("LocList", service.getLockerList());

		return "/pikka/LockerStatus";

	}
	
	//@RequestMapping(value = "/buyTicket")
	@PostMapping(value = "/buyTicket")
	public String buyTicket(Model model, String locNo) {
		
		log.info(locNo);
		model.addAttribute("locNo", locNo);
		return "/pikka/buyTicket";
	}

	@RequestMapping(value = "/main")
	public String main() {

		return "/pikka/main";
	}
}
