package com.pikka.dao;

import java.util.List;

import com.pikka.domain.SeatTicket;

public interface SeatTicketDao {

	public int insert(SeatTicket seatTicket);
	public List<SeatTicket> getUseList();
	
	public int updateOne();
	public int updateZero();
	public int updateCurrent();
	
	public SeatTicket get(String userId);
}
