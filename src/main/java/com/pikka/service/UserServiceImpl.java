package com.pikka.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.pikka.dao.UserDao;
import com.pikka.domain.UserVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class UserServiceImpl implements UserService {

	private UserDao userDao;
	
	private BCryptPasswordEncoder bEncoder;
	
	@Override
	public int signUpUser(UserVO vo) {
		vo.setUserPw(bEncoder.encode(vo.getUserPw()));
		return userDao.insertUser(vo); 
	}

	
}
