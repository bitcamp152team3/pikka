package com.pikka.service;

import java.util.List;

import com.pikka.domain.Locker;
import com.pikka.domain.LockerTicket;

public interface LockerService {
	
	
	//사물함 전체 현황 가져오기
	public List<Locker> getLockerList();
	
	//사물함 상태 바꾸기
	public boolean lockerStateUse(String lockerNo); //state=1으로
	public boolean lockerStateRefund(String lockerNo); //state=0으로
	
	
	//이용권 있는지 없는지
	public boolean checkTicket(String userId);
	//고객의 이용권 가져오기
	public LockerTicket getTicket(String userId);
	
	
	//이용권 등록하기
	public void registerTicket(LockerTicket ticket);
	//티켓 삭제하기는 보류, 티켓 구매내역 로그가 없으므로
	
	
	
	

}
