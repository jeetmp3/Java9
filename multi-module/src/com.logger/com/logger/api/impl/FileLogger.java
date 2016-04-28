package com.logger.api.impl;

import com.logger.api.Logger;
import java.io.*;

public class FileLogger implements Logger {
	
	String fileName;

	public FileLogger() {
		fileName = "/tmp/tmpLogFile.txt";
	}

	public void info(String message) {
		File file = null;
		BufferedWriter writer = null;
		try {
			file = new File(fileName);
			writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true)));	
			writer.write(message + "\n");
		}catch(Exception e) {
			System.err.println(e.getMessage());
		} finally {
			try {
				writer.close();
			}catch(Exception e) {
				
			}
		}
	}
}