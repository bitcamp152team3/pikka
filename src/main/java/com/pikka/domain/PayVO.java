package com.pikka.domain;

import java.time.LocalTime;

import lombok.Data;

@Data
public class PayVO {
	
	private String userId;
	private String productType; //사물함인지 락커인지
	
	//사물함일때
	private String locNo; //락커번호
	private int locType; //락커타입 30/60/90
	private String locPrice; //가격
	private String locUseDays; //사용기간 3/8~7/5

	//좌석일때
	private String seatNo;
	private int seatType;
	private String seatPrice;
	private LocalTime seatAvailableTime;
	
	
	

}
