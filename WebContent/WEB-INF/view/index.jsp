<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!-- (3/26 월) 수업.1 -->
<ul>
	<li>헬로우월드:
		<ul>
		<li><a href="hello.do">/hello.do</a>: 스프링MVC 일단 해 보기 HelloController.hello()</li>
		<li><a href="hello-raw.do">/hello-wra.do</a>: void 리턴 타입 컨트롤러 메서드 HelloController.hello(HttpServletResponse)</li>
		</ul>
	</li>
</br>




<li>모델:
	<ul>
		<li><a href="event/list">/event/list</a>: Model 예시, EventController.list()</li>
		<li><a href="event/list2">/event/list2</a>: ModelAndView 예시, EventController.list2()</li>
	</ul>
</li>
</br>



<!-- (3/28 수) 수업.1 -->
<li> @RequestMapping, @PathVariable
	<ul>
		<li><a href="member/regist">/member/regist</a>: GET/POST 예, RegistrationController</li>
		<li><a href="members">/members</a>: @PathVariable 사용 위한 목록 출력, MemberController.members()</li>
		<li><a href="members/m2">/members/m2</a>: @PathVariable 예, MemberController.memberDetail()</li> <!--  -->
		<li><a href="members/m2/orders/1">/members/m2/orders/1</a>: @PathVariable 예, MemberController.memberOrderDetail()</li>
		<li><a href="members/m2/orders/1a">/members/m2/orders/1a</a>: @PathVariable 400 응답 예, MemberController.memberOrderDetail()</li>
		<li><a href="files/a123">/files/a123</a>: @PathVariable 정규표현식, FileController.fileInfo()</li>
		<li><a href="files/a1">/files/a1</a>: @PathVariable 정규표현식 404, FileController.fileInfo() 뒤에 숫자가 3개와야하는데, 1개만 와서 404 에러가 난다</li>
		<li><a href="folders/1/2/3/files">/files/1/2/3/files</a>: @RequestMapping Ant패턴, FileController.list()</li>
		<li></li>
		<li></li>
		<li>장효가 따로 링크 만든 것</li>
		<li><a href="members/m1/orders">/members/m1/orders</a>: @PathVariable 예, MemberController.memberOrders()  이상화 님의 주문 목록</li>
		<li><a href="members/m2/orders">/members/m2/orders</a>: @PathVariable 예, MemberController.memberOrders()  김연아 님의 주문 목록</li>
		<li></li>
		<li></li>
		<li>장효가 따로 링크 만든 것</li>
		<li><a href="files/a.download">/files/a.download</a>: @PathVariable 정규표현식, FileController.fileInfo()</li>
		<li><a href="files/abcde.download">/files/abcde.download</a>: @PathVariable 정규표현식, FileController.fileInfo()</li>
		<li><a href="files/abcde123">/files/abcde123</a>: @PathVariable 정규표현식, FileController.fileInfo() 에러난다. fileId:[a-zA-Z] 숫자3개 앞에 영어1개만 와야한다는 뜻인가?</li>
	</ul>
</li>
</br>





<!-- (3/26 월) 수업.2 -->
<li>요청 파라미터 처리:
	<ul>
	<li><a href="event/detail?id=1">event/detail?id=1</a>: HttpServletRequest을 이용한 파라미터 구하기, EventController.detail()</li>
	<li><a href="event/detail2?id=1">event/detail2?id=1</a>: @RequestParam을 이용한 파라미터 구하기, EventController.detail2()</li>
	<li><a href="event/detail2">event/detail2</a>: @RequestParam 필수 파라미터 400 에러, EventController.detail2()</li>
	<li><a href="event/detail3">event/detail3</a>: 선생님께서 쓰시는 방법 EventController.java 참고 </li>
	<br/>
	<li><a href="search">search</a>: @RequestParam 필수 아님 설정, SearchController.search()</li>
	<!-- 선생님 방법 detail3 -->
	</ul>
</li>
</br>


<li>HTTP 세션:
	<ul>
	<li><a href="auth/login">/auth/login</a>: HttpServletRequest를 통해 HttpSession 사용, LoginController</li>
	<li><a href="auth/logout">/auth/logout</a>: HttpSession 직접 사용, LogoutController</li>
	<li><a href="newevent/step1">/newevent/step1</a>: @SessionAttributes 사용, EventCreationController </li>
	</ul>
</li>
</br>

</ul>
</body>
</html>





