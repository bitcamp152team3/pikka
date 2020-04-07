package com.pikka.controller;

import java.io.IOException;
import java.io.Reader;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.pikka.naver.NaverLoginBO;
import com.pikka.service.UserService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class CommonController {

	@Autowired
	private NaverLoginBO naverLoginBO;
	private String apiResult;
	@Autowired
	private UserService userService;
	
	@Autowired
	private AuthenticationManager authenticManager;
	
	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model){
		log.info("access denied :    " + auth);
		
		model.addAttribute("msg", "access Denied");
		
	}
	
	@GetMapping("/customLogin")
	public String loginInput(String error, String logout, Model model, HttpSession session) {
		log.info("error : " + error);
		log.info("logout : " + logout);
		
		if(error != null) model.addAttribute("error", "LoginError Check Your account");
		if(logout != null) model.addAttribute("logout", "LoginError Check Your account");
		
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		log.info("==== naverAuthUrl ===");
		log.info(naverAuthUrl);
		
		model.addAttribute("naverUrl",naverAuthUrl);
		
		return "pikka/customLogin";
	}
	
	@RequestMapping(value = "/callback", method = {RequestMethod.GET, RequestMethod.POST})
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws IOException, ParseException {
		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginBO.getAccessToken(session, code, state);
		
		apiResult = naverLoginBO.getUserProfile(oauthToken);
		
		log.info(apiResult);
		
		JSONParser parser = new JSONParser();
		
		Object obj = parser.parse(apiResult);
		
		JSONObject jsonObj = (JSONObject)obj;
		JSONObject responseObj = (JSONObject)jsonObj.get("response");
		String userId = (String) jsonObj.get("id");
		
		if(userService.findUserById(userId)) {
			
		}
		
		
		log.info(responseObj);
		
		return "redirect:/";
		
		
	}
	
}
