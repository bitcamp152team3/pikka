package com.pikka.domain;

import lombok.Data;

@Data
public class LockerTicket {
	
	private int lockerTicketNo;
	private String lockerNo;
	private String userId;
	private int lockerUseDays;
	private int lockerUsePrice;
	private String lockerStartDate;
	private String lockerEndDate;

}
