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
	<li>��ο����:
		<ul>
		<li><a href="hello.do">/hello.do</a>: ������MVC �ϴ� �� ���� HelloController.hello()</li>
		<li><a href="hello-raw.do">/hello-wra.do</a>: void ���� Ÿ�� ��Ʈ�ѷ� �޼��� HelloController.hello(HttpServletResponse)</li>
		</ul>
	</li>
</br>
</br>


<li>��:
	<ul>
		<li><a href="event/list">/event/list</a>: Model ����, EventController.list()</li>
		<li><a href="event/list2">/event/list2</a>: ModelAndView ����, EventController.list2()</li>
	</ul>
</li>
</br>
</br>

<li>��û �Ķ���� ó��:
	<ul>
	<li><a href="event/detail?id=1">event/detail?id=1</a>: HttpServletRequest�� �̿��� �Ķ���� ���ϱ�, EventController.detail()</li>
	<li><a href="event/detail2?id=1">event/detail2?id=1</a>: @RequestParam�� �̿��� �Ķ���� ���ϱ�, EventController.detail2()</li>
	<li><a href="event/detail2">event/detail2</a>: @RequestParam �ʼ� �Ķ���� 400 ����, EventController.detail2()</li>
	<li><a href="search">search</a>: @RequestParam �ʼ� �ƴ� ����, SearchController.search()</li>
	<!-- ������ ��� detail3 -->
	</ul>
</li>
</br>
</br>

</ul>
</body>
</html>





