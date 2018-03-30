package chap07.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class CommonModelInterceptor extends HandlerInterceptorAdapter{
	
		//sample.xml에서 외부에서 가져 올 수 있다는 것을 보여주기 위한 것.
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, 
			Object handler)
			throws Exception {
		System.out.println("VM: preHandle()");
		return true;
	}
	
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, 
			Object handler, Exception ex)
			throws Exception {
		System.out.println("VM: afterCompletion()");
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, 
			Object handler, ModelAndView modelAndView) throws Exception {
		System.out.println("VM: postHandle()");
		modelAndView.addObject("project", "spring4");
	}
}
