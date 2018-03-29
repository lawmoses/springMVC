<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!-- (3/26 ��) ����.1 -->
<ul>
	<li>��ο����:
		<ul>
		<li><a href="hello.do">/hello.do</a>: ������MVC �ϴ� �� ���� HelloController.hello()</li>
		<li><a href="hello-raw.do">/hello-wra.do</a>: void ���� Ÿ�� ��Ʈ�ѷ� �޼��� HelloController.hello(HttpServletResponse)</li>
		</ul>
	</li>
</br>




<li>��:
	<ul>
		<li><a href="event/list">/event/list</a>: Model ����, EventController.list()</li>
		<li><a href="event/list2">/event/list2</a>: ModelAndView ����, EventController.list2()</li>
	</ul>
</li>
</br>



<!-- (3/28 ��) ����.1 -->
<li> @RequestMapping, @PathVariable
	<ul>
		<li><a href="member/regist">/member/regist</a>: GET/POST ��, RegistrationController</li>
		<li><a href="members">/members</a>: @PathVariable ��� ���� ��� ���, MemberController.members()</li>
		<li><a href="members/m2">/members/m2</a>: @PathVariable ��, MemberController.memberDetail()</li> <!--  -->
		<li><a href="members/m2/orders/1">/members/m2/orders/1</a>: @PathVariable ��, MemberController.memberOrderDetail()</li>
		<li><a href="members/m2/orders/1a">/members/m2/orders/1a</a>: @PathVariable 400 ���� ��, MemberController.memberOrderDetail()</li>
		<li><a href="files/a123">/files/a123</a>: @PathVariable ����ǥ����, FileController.fileInfo()</li>
		<li><a href="files/a1">/files/a1</a>: @PathVariable ����ǥ���� 404, FileController.fileInfo() �ڿ� ���ڰ� 3���;��ϴµ�, 1���� �ͼ� 404 ������ ����</li>
		<li><a href="folders/1/2/3/files">/files/1/2/3/files</a>: @RequestMapping Ant����, FileController.list()</li>
		<li></li>
		<li></li>
		<li>��ȿ�� ���� ��ũ ���� ��</li>
		<li><a href="members/m1/orders">/members/m1/orders</a>: @PathVariable ��, MemberController.memberOrders()  �̻�ȭ ���� �ֹ� ���</li>
		<li><a href="members/m2/orders">/members/m2/orders</a>: @PathVariable ��, MemberController.memberOrders()  �迬�� ���� �ֹ� ���</li>
		<li></li>
		<li></li>
		<li>��ȿ�� ���� ��ũ ���� ��</li>
		<li><a href="files/a.download">/files/a.download</a>: @PathVariable ����ǥ����, FileController.fileInfo()</li>
		<li><a href="files/abcde.download">/files/abcde.download</a>: @PathVariable ����ǥ����, FileController.fileInfo()</li>
		<li><a href="files/abcde123">/files/abcde123</a>: @PathVariable ����ǥ����, FileController.fileInfo() ��������. fileId:[a-zA-Z] ����3�� �տ� ����1���� �;��Ѵٴ� ���ΰ�?</li>
	</ul>
</li>
</br>





<!-- (3/26 ��) ����.2 -->
<li>��û �Ķ���� ó��:
	<ul>
	<li><a href="event/detail?id=1">event/detail?id=1</a>: HttpServletRequest�� �̿��� �Ķ���� ���ϱ�, EventController.detail()</li>
	<li><a href="event/detail2?id=1">event/detail2?id=1</a>: @RequestParam�� �̿��� �Ķ���� ���ϱ�, EventController.detail2()</li>
	<li><a href="event/detail2">event/detail2</a>: @RequestParam �ʼ� �Ķ���� 400 ����, EventController.detail2()</li>
	<li><a href="event/detail3">event/detail3</a>: �����Բ��� ���ô� ��� EventController.java ���� </li>
	<br/>
	<li><a href="search">search</a>: @RequestParam �ʼ� �ƴ� ����, SearchController.search()</li>
	<!-- ������ ��� detail3 -->
	</ul>
</li>
</br>


<li>HTTP ����:
	<ul>
	<li><a href="auth/login">/auth/login</a>: HttpServletRequest�� ���� HttpSession ���, LoginController</li>
	<li><a href="auth/logout">/auth/logout</a>: HttpSession ���� ���, LogoutController</li>
	<li><a href="newevent/step1">/newevent/step1</a>: @SessionAttributes ���, EventCreationController </li>
	</ul>
</li>
</br>

</ul>
</body>
</html>





