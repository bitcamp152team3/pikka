package com.pikka.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pikka.dao.SeatDao;
import com.pikka.dao.SeatTicketDao;
import com.pikka.domain.LockerTicket;
import com.pikka.domain.Seat;
import com.pikka.domain.SeatTicket;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class SeatServiceImpl implements SeatService {
		
	@Autowired
	private SeatDao seatDao;
	@Autowired
	private SeatTicketDao seatTicketDao;

	
	@Override
	public List<Seat> getSeatList() {
		log.info("service getSeatList()");
		List<Seat> list = seatDao.getSeatList();
		
		return list;
	}		
	
	@Override
	public List<SeatTicket> getUseList() {
		// TODO Auto-generated method stub
		log.info("service getUseList()");
		return seatTicketDao.getUseList();	
	}	

	@Override
	public int insert(SeatTicket seatticket) {
		// TODO Auto-generated method stub
		
		return seatTicketDao.insert(seatticket);		
	}

	@Override
	public int updateOne(SeatTicket seatTicket) {
		// TODO Auto-generated method stub
		return seatTicketDao.updateOne(seatTicket);
	}
	@Override
	public int updateZero(SeatTicket seatTicket) {
		// TODO Auto-generated method stub
		return seatTicketDao.updateZero(seatTicket);
	}

	@Override
	
	public int updateCurrent(SeatTicket seatTicket) {
		// TODO Auto-generated method stub
		return seatTicketDao.updateCurrent(seatTicket);
	}
	
	
	@Override
	public SeatTicket getTicket(String userId) {
		log.info("serviceImpl" + seatTicketDao.get(userId));
		return seatTicketDao.get(userId);
	}
	
	@Override
	public int seatCount() {
		
		return seatDao.seatCount();
	}

	@Override
	public boolean delete() {
		// TODO Auto-generated method stub
		return seatTicketDao.delete();
	}
}
