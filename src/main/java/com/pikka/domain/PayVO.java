package com.pikka.domain;

import java.time.LocalTime;

import lombok.Data;

@Data
public class PayVO {
	
	private String userId;
	private String productType; //�궗臾쇳븿�씤吏� �씫而ㅼ씤吏�
	
	//�궗臾쇳븿�씪�븣
	private String locNo; //�씫而ㅻ쾲�샇
	private int locType; //�씫而ㅽ��엯 30/60/90
	private String locPrice; //媛�寃�
	private String locUseDays; //�궗�슜湲곌컙 3/8~7/5



}
