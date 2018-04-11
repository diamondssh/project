package com.ch.project.dao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginChk implements HandlerInterceptor {
	//로그인 한 사람만, 파일업로드 가능하도록 하는 코드(로그인체크는 pre만 사용함)
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession(); //세션 읽기
		if (session.getAttribute("id") == null) { //로그인 안된 사용자
			response.sendRedirect("loginForm.do");
			return false; //작업 취소 - 로그인화면으로 보내기
		}
		return true; //작업 성공! 로그인 된 사용자
	}
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {}
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {}
}
