<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h3><p>@RequestMapping(value = "/files/{fileId:[a-zA-Z]\\d{3}}", method = RequestMethod.GET) �Դϴ�.</p></h3>
<h3><p>@RequestMapping(value = "/files/{fileId:[a-zA-Z]\\d{3}}", method = RequestMethod.POST) �Դϴ�.</p></h3>
<ul>
	<li><p>GET ��İ� POST ��� �ΰ����� ���� �� �ֽ��ϴ�.</p></li>
	<li><p>"/files/{fileId:[a-zA-Z]\\d{3}}" ���� d{3}�� �ǹ̴� /files/(�����̸�)������ ���ڰ�3���� �;��Ѵٴ� �ǹ��Դϴ�.</p></li>
	<li><p>"/files/{fileId:[a-zA-Z]\\d{3}}" ���� d{3}�� �ǹ̴� �� �𸣰ڽ��ϴ�..</p></li>
</ul>


</body>
</html>