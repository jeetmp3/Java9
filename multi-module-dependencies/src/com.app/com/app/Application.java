package com.app;

import com.foo.one.Logger;

public class Application {
	public static void main(String []args) {
		Logger l = new Logger();
		System.out.println(l.getUtils().toUpperCase("jitendra"));
	}
}