package demo;

import sun.misc.BASE64Encoder;

/**
 * Created by jitendra on 28/5/16.
 */
public class InternalClassCheck {

	public static void main(String[] args) {
		System.out.println(new BASE64Encoder().encode("jittu".getBytes()));
	}
}
