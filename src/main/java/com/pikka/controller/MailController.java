package com.pikka.controller;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MailController {

	@Autowired
	private JavaMailSender mailSender;

	// mailSending 肄붾뱶
	@RequestMapping(value = "mailSending.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String mailSending(HttpServletRequest request) {
		
		String setfrom = "rkskqksk3@gmail.com";
		String tomail = request.getParameter("tomail"); // 諛쏅뒗 �궗�엺 �씠硫붿씪
		String title = request.getParameter("title"); // �젣紐�
		String content = request.getParameter("content"); // �궡�슜
		
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message,
					true, "UTF-8");

			messageHelper.setFrom(setfrom); // 蹂대궡�뒗�궗�엺 �깮�왂�븯硫� �젙�긽�옉�룞�쓣 �븞�븿
			messageHelper.setTo(tomail); // 諛쏅뒗�궗�엺 �씠硫붿씪
			messageHelper.setSubject(title); // 硫붿씪�젣紐⑹� �깮�왂�씠 媛��뒫�븯�떎
			messageHelper.setText(content); // 硫붿씪 �궡�슜
			
			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
		}
		return "redirect:/";
	}
	
	@RequestMapping(value = "mailTest")
	public String mailTest() {
		return "/pikka/mailTest";
	}
}