package com.logger.api.impl;

import com.logger.api.Logger;

public class ConsoleLogger implements Logger {

	public void info(String message) {
		System.out.println(message);
	}
}