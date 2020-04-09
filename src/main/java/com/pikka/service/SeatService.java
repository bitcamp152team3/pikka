package com.pikka.service;

import java.util.List;

import com.pikka.domain.Seat;
import com.pikka.domain.SeatTicket;

public interface SeatService {
	
	
	public List<Seat> getSeatList();
	
	public List<SeatTicket> getUseList();
	
	public SeatTicket getTicket(String userId);
	
	public int insert(SeatTicket seatticket);
	public int updateOne(SeatTicket seatTicket);
	public int updateZero(SeatTicket seatTicket);
	public int updateCurrent(SeatTicket seatTicket);
	public int seatCount();
	public boolean delete();
}
