<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/mystyle.css"/>
	<style>
		font.fonts{ text-decoration:line-through }
	</style>
</head>
<body>
	<nav>
		<h1>Admin Page</h1>
	</nav>
	<br>
	<fieldset>
		<legend>��ǰ ���</legend>
		<form name="item" method="post" action="./itemhandling.jsp">
			
			<br/>
			��ǰ <input type="text" name="item_name" placeholder="��ǰ �̸�"><br/><br/>
			��ǰ��ȣ <input type="text" name="item_num" placeholder="��ǰ ��ȣ"><br/><br/>		
			���� <input type="number" name="price" placeholder="��ǰ ����"><br/><br/>
			�̹��� <input type="file" name="image" size=40>
			<input type="submit" value="���ε�"><br><br>
		</form>
	</fieldset>
	<br><br>
	<fieldset>
		<legend>�̹��� ����</legend>
		<br><br><br><br><br><br>
	</fieldset>
	<br><br>
	<fieldset>
		<legend>����� ���� �����ϱ�</legend>
		<br><br><br><br><br><br>
	</fieldset>
</body>
</html>