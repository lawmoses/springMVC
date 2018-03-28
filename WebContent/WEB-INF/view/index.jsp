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
</br>


<li>모델:
	<ul>
		<li><a href="event/list">/event/list</a>: Model 예시, EventController.list()</li>
		<li><a href="event/list2">/event/list2</a>: ModelAndView 예시, EventController.list2()</li>
	</ul>
</li>
</br>
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
		<li><a href="files/a1">/files/a1</a>: @PathVariable 정규표현식 404, FileController.fileInfo()</li>
		<li><a href="folders/1/2/3/files">/files/1/2/3/files</a>: @RequestMapping Ant패턴, FileController.list()</li>
		<li></li>
		<li></li>
		<li>장효가 따로 링크 만든 것</li>
		<li><a href="members/m1/orders">/members/m1/orders</a>: @PathVariable 예, MemberController.memberOrders()  이상화 님의 주문 목록</li>
		<li><a href="members/m2/orders">/members/m2/orders</a>: @PathVariable 예, MemberController.memberOrders()  김연아 님의 주문 목록</li>
	</ul>
</li>
</br>
</br>





<!-- (3/26 월) 수업.2 -->
<li>요청 파라미터 처리:
	<ul>
	<li><a href="event/detail?id=1">event/detail?id=1</a>: HttpServletRequest을 이용한 파라미터 구하기, EventController.detail()</li>
	<li><a href="event/detail2?id=1">event/detail2?id=1</a>: @RequestParam을 이용한 파라미터 구하기, EventController.detail2()</li>
	<li><a href="event/detail2">event/detail2</a>: @RequestParam 필수 파라미터 400 에러, EventController.detail2()</li>
	<li><a href="search">search</a>: @RequestParam 필수 아님 설정, SearchController.search()</li>
	<!-- 선생님 방법 detail3 -->
	</ul>
</li>
</br>
</br>




</ul>
</body>
</html>





