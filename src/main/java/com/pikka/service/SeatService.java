package com.pikka.service;

import java.util.List;

import com.pikka.domain.Seat;
import com.pikka.domain.SeatTicket;

public interface SeatService {
	
	
	public List<Seat> getSeatList();
	
	public List<SeatTicket> getUseList();
	
	public SeatTicket getTicket(String userId);
	
	public int insert(SeatTicket seatticket);
	public int updateOne();
	public int updateZero();
	public int updateCurrent();
	public int seatCount();

}
