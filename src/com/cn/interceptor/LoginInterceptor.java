package com.cn.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest arg0,//基于Controller操作之后拦截,可以用来记录日志等工作。。。。
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,//作用于运行Controller之后，返回ModelAndView之前
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,Object arg2) throws Exception {//controller执行之前拦截
		String url = request.getRequestURI();
		System.out.println(url);
		
		if(url.indexOf("/login") >=0){
			return true;
		}
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("name");
		if(username != null){
			return true;
		}
		request.getRequestDispatcher("Login.jsp").forward(request, response);
		return false;
	}

}
