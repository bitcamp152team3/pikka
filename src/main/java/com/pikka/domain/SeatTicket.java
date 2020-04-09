package com.pikka.domain;

import java.time.LocalTime;

import lombok.Data;

@Data

public class SeatTicket {

	private int seatTicketNo;
	private String seatNo;
	private String userId;
	private int seatType;
	private int seatPrice;

	private LocalTime seatStartTime;
	private LocalTime seatEndTime;
	private LocalTime seatAvailableTime;

}
