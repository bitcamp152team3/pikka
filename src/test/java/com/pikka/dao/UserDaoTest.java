package com.pikka.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.pikka.domain.AuthVO;
import com.pikka.domain.UserVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class UserDaoTest {

	@Autowired
	UserDao dao;
	@Autowired
	BCryptPasswordEncoder bEncoder;
	

	@Test
	public void test() {
		
		UserVO vo = new UserVO();
		/*
		 * vo.setUserId("member"); vo.setUserName("정나다");
		 * vo.setUserPw(bEncoder.encode("1234")); vo.setUserTel("01012341234");
		 * log.info(vo);
		 */
		
		AuthVO vo1 = new AuthVO();
		vo1.setAuth("ROLE_MEMBER");
		vo1.setUserId("member");
		
		log.info(dao.insertAuth(vo1));
		
		
	}
	
}
