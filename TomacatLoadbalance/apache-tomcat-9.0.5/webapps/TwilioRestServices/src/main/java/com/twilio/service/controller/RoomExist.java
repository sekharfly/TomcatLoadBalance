package com.twilio.service.controller;

public class RoomExist extends Exception {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public RoomExist() {
		super("Room exists");
	}
}
