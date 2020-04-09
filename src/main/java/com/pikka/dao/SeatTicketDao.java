package com.pikka.dao;

import java.util.List;

import com.pikka.domain.SeatTicket;

public interface SeatTicketDao {

	public int insert(SeatTicket seatTicket);
	public List<SeatTicket> getUseList();
	public boolean delete();
	public int updateOne(SeatTicket seatTicket);
	public int updateZero(SeatTicket seatTicket);
	public int updateCurrent(SeatTicket seatTicket);
	
	public SeatTicket get(String userId);
}
