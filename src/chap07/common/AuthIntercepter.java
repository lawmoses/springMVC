package chap07.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthIntercepter extends HandlerInterceptorAdapter{

	// 상속간에 @Override 가 뜨지 않을 때는 메소드 이름 치고 컨트롤+스페이스 하면 메소드 이름이 뜬다.
	
	@Override
	public void postHandle(HttpServletRequest request, 
			HttpServletResponse response, 
			Object handler, ModelAndView modelAndView) throws Exception {
		System.out.println("AI: postHandle()");
	}

	@Override
	public void afterCompletion(HttpServletRequest request, 
			HttpServletResponse response, 
			Object handler, Exception ex) throws Exception {
		System.out.println("AI: afterCompletion()");
	}

	@Override
	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, 
			Object handler) throws Exception {
		System.out.println("AI: preHandle()");
		HttpSession session = request.getSession(false);
		
		
//=============교과서에 없음. 선생님께서 로그인화면으로 바로 갈 수 있도록 추가한것.
		String path = request.getContextPath()+"/auth/login";
		System.out.println(path);
//=============여기까지 교과서에 없음. 선생님께서 로그인화면으로 바로 갈 수 있도록 추가한것.
		
		
		if (session == null) {
			//(교과서에 있는 것은 주석처리함. 로그인하고 바로 넘어가게 하기 위해서) 
			//response.sendError(HttpServletResponse.SC_FORBIDDEN);
			
			response.sendRedirect(path);
			return false;
		}
		if (session.getAttribute("auth") == null) {
			//(교과서에 있는 것은 주석처리함. 로그인하고 바로 넘어가게 하기 위해서) 
			//response.sendError(HttpServletResponse.SC_FORBIDDEN);
			response.sendRedirect(path);
			return false;
		}
		return true;
	}
	
	
	
}
