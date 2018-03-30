package chap07.auth;

import chap07.member.MemberInfo;
import chap07.member.MemberService;

public class Authenticator {

	
		//이것을 보면 문제를 발견해야해
		//어디서도 값을 받지 못해. 
		//세터도 없다. 그럼 컨스트럭트 인젝션이다. sample.xml에서 보면 알 수 있다.
	private MemberService memberService;

	public Authenticator(MemberService memberService) {
		this.memberService = memberService;
	}

	public Auth authenticate(String email, String password) {
		
		MemberInfo mi = memberService.getMemberInfoByEmail(email);
		
		if (mi == null)
			throw new AuthenticationException();
		
		if (!mi.matchPassword(password))
			throw new AuthenticationException();

		return new Auth(mi.getId(), mi.getName());
	}
}

	
	

