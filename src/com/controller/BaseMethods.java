package com.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;

public class BaseMethods {

	public static User getCurrentuser(){
		
		return (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	}
}
