package com.pikka.dao;

import java.util.List;

import com.pikka.domain.Locker;

public interface LockerDao {
	
	//모든 락커 가져오기
	public List<Locker> getList();
	
	//락커 하나 정보 get
	public Locker get(String lockerNo);
	
	//락커 정보 업데이트
	public int update(Locker locker);
	
	/* public int updateUse(Locker locker); */
	
	
	//locker를 생성하고 삭제하는 기능은 없어도 될 듯
	/*
	 * public int insert(Locker locker); public int delete(String lockerNo);
	 */
	
	

}
