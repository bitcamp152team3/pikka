package com.pikka.controller;

import java.io.IOException;
import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.pikka.domain.UserVO;
import com.pikka.naver.NaverLoginBO;
import com.pikka.security.CustomerUserDetailsService;
import com.pikka.service.LockerService;
import com.pikka.service.SeatService;
import com.pikka.service.UserService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class CommonController {
	
	@Autowired
	private SeatService seatService;
	
	@Autowired
	private LockerService service;
	@Autowired
	private NaverLoginBO naverLoginBO;
	@Autowired
	private UserService userService;
	@Autowired
	private CustomerUserDetailsService a;

	private String apiResult;

	@RequestMapping(value = "/")
	public String main() {
		return "/pikka/main";
	}
	
	@GetMapping("/SignUp")
	public String signUp() {
		return "/pikka/SignUp";
	}

	@GetMapping("/myPage")
	public String nav(Model model, Principal principal) {
		
		model.addAttribute("seatTicket", seatService.getTicket(principal.getName()));
		// 락커티켓 추가
		model.addAttribute("locTicket", service.getTicket(principal.getName()));

		return "/pikka/myPage";
	}


	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) {
		log.info("access denied :    " + auth);

		model.addAttribute("msg", "access Denied");

	}

	@GetMapping("/customLogin")
	public String loginInput(String error, String logout, Model model, HttpSession session) {
		log.info("error : " + error);
		log.info("logout : " + logout);

		if (error != null)
			model.addAttribute("error", "LoginError Check Your account");
		if (logout != null)
			model.addAttribute("logout", "LoginError Check Your account");

		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);

		model.addAttribute("naverUrl", naverAuthUrl);

		return "pikka/customLogin";
	}

	@RequestMapping(value = "/callback", method = { RequestMethod.GET, RequestMethod.POST })
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
			throws IOException, ParseException {
		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginBO.getAccessToken(session, code, state);

		apiResult = naverLoginBO.getUserProfile(oauthToken);

		log.info(apiResult);

		JSONParser parser = new JSONParser();

		Object obj = parser.parse(apiResult);

		JSONObject jsonObj = (JSONObject) obj;
		JSONObject responseObj = (JSONObject) jsonObj.get("response");
		String userId = (String) responseObj.get("id");
		log.info("사용자 아이디 : " + userId);

		if (!userService.findUserById(userId)) {
			UserVO userVO = new UserVO();
			userVO.setUserId(userId);
			userVO.setUserPw("1234");
			userVO.setUserName("신규가입자");
			userVO.setUserTel("01012341234");
			userService.signUpUser(userVO);
			log.info("회원가입 성공");
		}

		UserDetails userDetails = a.loadUserByUsername(userId);

		SecurityContext securityContext = SecurityContextHolder.getContext();
		securityContext.setAuthentication(
				new UsernamePasswordAuthenticationToken(userDetails, null, userDetails.getAuthorities()));

		session.setAttribute("SPRING_SECURITY_CONTEXT", securityContext);

		log.info(responseObj);

		return "redirect:/";

	}
	

}
