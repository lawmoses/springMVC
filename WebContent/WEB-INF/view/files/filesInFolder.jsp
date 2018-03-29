<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2>  ${folderIds} 를 보냈습니다.</h2>
<br/>
<br/>
<h3><p>FileController.java의@RequestMapping("/folders/**/files") 입니다.</p></h3>
<ul>
	<li><p>/folders/**/files 에서**의 의미는 글씨가 여러개 와도 상관없다는 말입니다.</p></li>
	<li><p>**/files는 /files 앞에 어떤 글씨든 상관없다는 말입니다.</p></li>
</ul>


</body>
</html>