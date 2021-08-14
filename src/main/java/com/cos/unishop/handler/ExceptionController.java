package com.cos.unishop.handler;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestController;

@ControllerAdvice
@RestController
public class ExceptionController {

	
	@ExceptionHandler(Exception.class)
	public String test1(Exception e) {
		return "에러발생 :"+e.getMessage();
	}
}
