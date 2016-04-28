package com.message.app;

import com.logger.api.LoggerFactory;
import com.logger.api.Logger;

public class Application {
	public static void main(String[] args) {
		Logger logger = LoggerFactory.getLogger("console");
		logger.info("Hello from Multi-Module application");

		Logger fileLogger = LoggerFactory.getLogger("file");
		fileLogger.info("Hello from Multi-Module file logger");
	}
}