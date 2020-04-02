package com.pikka.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.pikka.domain.UserVO;

public class CustomValidator implements  Validator{

	
	@Override
	public boolean supports(Class clazz) {
		return UserVO.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {

		UserVO user = (UserVO)target;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userId", "아이디 비었어요");
		
		
	}
	
	
}
