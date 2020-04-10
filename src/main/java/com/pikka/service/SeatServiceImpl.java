package com.pikka.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pikka.dao.SeatDao;
import com.pikka.dao.SeatTicketDao;
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
	public int insert(SeatTicket seatTicket) {
		// TODO Auto-generated method stub
		
		return seatTicketDao.insert(seatTicket);		
	}

	@Override
	public int updateOne() {
		// TODO Auto-generated method stub
		return seatTicketDao.updateOne();
	}
	@Override
	public int updateZero() {
		// TODO Auto-generated method stub
		return seatTicketDao.updateZero();
	}

	@Override
	
	public int updateCurrent() {
		// TODO Auto-generated method stub
		return seatTicketDao.updateCurrent();
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

	
}
