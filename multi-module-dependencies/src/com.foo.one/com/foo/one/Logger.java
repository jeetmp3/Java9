package com.foo.one;

import com.foo.two.StringUtils;

public class Logger {
	
	//public void info(String name) {
	//	System.out.println("Hello "+ new StringUtils().toUpperCase(name));
	//}

	public StringUtils getUtils() {
		return new StringUtils();
	}
}