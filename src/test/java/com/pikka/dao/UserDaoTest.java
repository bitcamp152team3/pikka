package com.pikka.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class UserDaoTest {

	@Autowired
	UserDao dao;

	@Test
	public void test() {
		log.info(dao.getTime());
		
		log.info(dao.read("test1").getAuthList() + "이거다이");
		
	}
	
}
