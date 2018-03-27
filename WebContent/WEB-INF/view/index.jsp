<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

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





