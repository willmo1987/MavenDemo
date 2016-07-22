package com.will4it.mavenlib;

/**
 * author will date 7/5/16.
 */
public class MavenUtil {

	private String name;

	public String getMavenDesc() {
		String name = getName();
		return "This is from Maven Library - " + name;
	}

	private String getName() {
		return name;
	}

}
