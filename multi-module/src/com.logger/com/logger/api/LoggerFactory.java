package com.logger.api;

import com.logger.api.impl.*;

public class LoggerFactory {
	
	private LoggerFactory() {}

	public static Logger getLogger(String type) {
		if("console".equals(type)) {
			return new ConsoleLogger();
		} else {
			return new FileLogger();
		}
	}
}