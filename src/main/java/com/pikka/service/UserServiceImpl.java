package com.pikka.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.pikka.dao.UserDao;
import com.pikka.domain.AuthVO;
import com.pikka.domain.UserVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDao userDao;
	
	@Autowired
	BCryptPasswordEncoder bEncoder;
	
	@Override
	public boolean signUpUser(UserVO vo) {
	
		try {
			
			vo.setUserPw(bEncoder.encode(vo.getUserPw()));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return userDao.insertUser(vo) & userDao.insertAuth(giveAuth(vo.getUserId()));
	}

	@Override
	public boolean deleteUser(String userId) {
		
		return userDao.deleteUser(userId);
	}

	@Override
	public AuthVO giveAuth(String userId) {
		AuthVO auth = new AuthVO();
		auth.setUserId(userId);
		auth.setAuth("ROLE_MEMBER");
		return auth;
	}

	@Override
	public boolean findUserById(String userId) {
		
		return userDao.searchUser(userId)==1 ? true : false ;
	}

	@Override
	public UserVO readUser(String userId) {
		return userDao.read(userId);
	}
	
	@Override
	public boolean modifyUser(UserVO vo) {
		vo.setUserPw(bEncoder.encode(vo.getUserPw()));
		return userDao.updateUser(vo);
	}

	
	

	
}
