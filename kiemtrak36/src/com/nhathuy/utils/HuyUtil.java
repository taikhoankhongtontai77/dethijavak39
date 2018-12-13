package com.nhathuy.utils;

public class HuyUtil {

	public static String getString(String value) {
		return value == null ? "" : value;
	}

	public static String getString(Object value) {
		return value == null ? "" : String.valueOf(value);
	}
}
