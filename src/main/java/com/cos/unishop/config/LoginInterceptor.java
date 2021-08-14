package com.cos.unishop.config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

public class LoginInterceptor implements HandlerInterceptor {

	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//여기에 공통관심사 넣기
		HttpSession session = request.getSession();
		
		if(session.getAttribute("principal") == null) {
			
			response.sendRedirect("/");
			return false;
		}
	
		
		return  true;
		
	}//end preHandle
}
