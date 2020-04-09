package com.pikka.dao;

import java.util.List;

import com.pikka.domain.Seat;

public interface SeatDao {
	
	//모든 락커 가져오기
	public List<Seat> getSeatList();	
	/* public List<Seat> getUseList(Seat seat); */
	public int seatCount();
}
