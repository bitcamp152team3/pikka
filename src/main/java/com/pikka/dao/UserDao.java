package com.pikka.dao;

import java.util.List;

import com.pikka.domain.UserVO;

public interface UserDao {
	
	public String getTime();
	
	public List<UserVO> getAllid();
	
	public UserVO read(String userId);

}
