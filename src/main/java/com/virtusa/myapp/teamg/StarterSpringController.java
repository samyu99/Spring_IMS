package com.virtusa.myapp.teamg;

import org.springframework.web.bind.annotation.RequestMapping;
 

public class StarterSpringController {
	
	@RequestMapping("/spring")
	public String basicURL() {
		return "Welcome to Spring Boot Hello World Tutorial";
	}
 
}