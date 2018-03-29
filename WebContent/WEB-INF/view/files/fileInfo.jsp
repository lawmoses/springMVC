<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h3><p>@RequestMapping(value = "/files/{fileId:[a-zA-Z]\\d{3}}", method = RequestMethod.GET) 입니다.</p></h3>
<h3><p>@RequestMapping(value = "/files/{fileId:[a-zA-Z]\\d{3}}", method = RequestMethod.POST) 입니다.</p></h3>
<ul>
	<li><p>GET 방식과 POST 방식 두가지로 보낼 수 있습니다.</p></li>
	<li><p>"/files/{fileId:[a-zA-Z]\\d{3}}" 에서 d{3}의 의미는 /files/(파일이름)다음에 숫자가3개가 와야한다는 의미입니다.</p></li>
	<li><p>"/files/{fileId:[a-zA-Z]\\d{3}}" 에서 d{3}의 의미는 잘 모르겠습니다..</p></li>
</ul>


</body>
</html>