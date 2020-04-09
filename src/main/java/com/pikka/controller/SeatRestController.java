package com.pikka.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pikka.domain.Seat;
import com.pikka.domain.SeatTicket;
import com.pikka.service.SeatService;

@org.springframework.web.bind.annotation.RestController
public class SeatRestController {

	@Autowired
	private SeatService service;

	@RequestMapping(value = "/getSeat", method = RequestMethod.POST, produces = {
			MediaType.APPLICATION_PROBLEM_JSON_UTF8_VALUE, MediaType.APPLICATION_ATOM_XML_VALUE })
	public List<Seat> getSeat(Model model) {
		return service.getSeatList();
	}

	@RequestMapping(value = "/getSeatInfo", method = RequestMethod.POST, produces = {
			MediaType.APPLICATION_PROBLEM_JSON_UTF8_VALUE, MediaType.APPLICATION_ATOM_XML_VALUE })
	@ResponseBody
	public List<SeatTicket> getSeatInfo(Model model) {
		return service.getUseList();
	}
	
	@RequestMapping(value = "/getCountSeat", method = RequestMethod.GET, produces = {MediaType.APPLICATION_PROBLEM_JSON_UTF8_VALUE,
			MediaType.APPLICATION_ATOM_XML_VALUE})
	public int getCountSeat() {
		return service.seatCount();
	}

}
