package com.pikka.dao;

import java.util.List;

import com.pikka.domain.LockerTicket;

public interface LockerTicketDao {
	
	public List<LockerTicket> getList();
	
	//유저로 검색해서 가져올껴?
	public LockerTicket get(String userId);
	
	//종료되는 사물함 가져오기
	public List<String> selectEndTicket(String today);
	
	//유저로 검색해서 가져올껴?
	//이용권 만료시 삭제?
	public int delete(String userId);
	
	//이용권 변경해야할 때?? 언제쓰냐 이걸?
	public int update(LockerTicket locTicket);
	
	//이용권 구매시 생성
	public int insert(LockerTicket locTicket);
	
	

}
