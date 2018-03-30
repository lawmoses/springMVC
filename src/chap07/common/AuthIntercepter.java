package chap07.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthIntercepter extends HandlerInterceptorAdapter{

	// ��Ӱ��� @Override �� ���� ���� ���� �޼ҵ� �̸� ġ�� ��Ʈ��+�����̽� �ϸ� �޼ҵ� �̸��� ���.
	
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
		
		
//=============�������� ����. �����Բ��� �α���ȭ������ �ٷ� �� �� �ֵ��� �߰��Ѱ�.
		String path = request.getContextPath()+"/auth/login";
		System.out.println(path);
//=============������� �������� ����. �����Բ��� �α���ȭ������ �ٷ� �� �� �ֵ��� �߰��Ѱ�.
		
		
		if (session == null) {
			//(�������� �ִ� ���� �ּ�ó����. �α����ϰ� �ٷ� �Ѿ�� �ϱ� ���ؼ�) 
			//response.sendError(HttpServletResponse.SC_FORBIDDEN);
			
			response.sendRedirect(path);
			return false;
		}
		if (session.getAttribute("auth") == null) {
			//(�������� �ִ� ���� �ּ�ó����. �α����ϰ� �ٷ� �Ѿ�� �ϱ� ���ؼ�) 
			//response.sendError(HttpServletResponse.SC_FORBIDDEN);
			response.sendRedirect(path);
			return false;
		}
		return true;
	}
	
	
	
}
