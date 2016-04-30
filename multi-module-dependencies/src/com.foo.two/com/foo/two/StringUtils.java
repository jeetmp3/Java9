package com.foo.two;

public class StringUtils {

	public String toUpperCase(String str) {
		if(str != null && !"".equals(str)) {
			str = str.toUpperCase();
		}
		return str;
	}
}