<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/mystyle.css"/>
</head>
<body>
	<nav>
		<h1>��й�ȣ ã��</h1>
	</nav>
	<form method="post" action="./forgetpwd_status.jsp">
		<fieldset>
			<legend>���̵�� ã��</legend>
			<label for="name">���̵�</label>
			<input type="text" name="id" id="id"/><br/>
			<input type="submit" name="submit" value="��ȸ"/>
			<input type="reset" name="reset1" value="�ʱ�ȭ"/>
		</fieldset>
	</form>
	<form method="post" action="./forgetpwd_status.jsp">
		<br/>
		<fieldset>
			<legend>��й�ȣ�� ã��</legend>
			<label for="name">���̵�</label>
			<input type="text" name="id" id="id"/><br/>
			<label for="password1">�н�����</label>
			<input type="password" name="password"><br/>
			<input type="submit" name="submit" value="��ȸ"/>
			<input type="reset" name="reset" value="�ʱ�ȭ"/>
		</fieldset>
	</form>
	<br/>
	<a href="index.jsp">Back to Home</a>
	<br/>
	Copyright (c) 2018 Web Shop
</body>
</html>