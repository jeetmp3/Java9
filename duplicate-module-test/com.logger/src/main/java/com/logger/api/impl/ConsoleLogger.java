package com.logger.api.impl;

import com.logger.api.Logger;

/**
 * Created by jitendra on 28/5/16.
 */
public class ConsoleLogger implements Logger {

	@Override
	public void log(Object object) {
		System.out.println(String.valueOf(object));
	}
}
