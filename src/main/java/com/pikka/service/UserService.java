package com.pikka.service;

import com.pikka.domain.AuthVO;
import com.pikka.domain.UserVO;

public interface UserService {

	public boolean signUpUser(UserVO vo);
	
	public boolean deleteUser(String userId);
	
	public AuthVO giveAuth(String userId);
	
	public boolean findUserById(String userId);
	
}
