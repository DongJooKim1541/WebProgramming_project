<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="./shopcart.jsp">
		<div id="product1">
			<img src="./media/clothes1.jpg" width="100" height="100"/>
			<p>�������MTM (���, ������) #�������#���͸�<br/>
			����: 16,000��
			</p>
			<input type="submit" name="clothes" value="����īƮ�� �߰��ϱ�" onclick="alertfunc()"/>
		</div>
		<br/>
			<div id="product2">
			<img src="./media/clothes2.jpg" width="100" height="100"/>
			<p>��Ű�ڼ���Ƽ #������#��������</br>
			����: 16,000��
			</p>
			<input type="submit" name="clothes" value="����īƮ�� �߰��ϱ�" onclick="alertfunc()"/>
		</div>
		<script>
			function alertfunc(){
				alert("����īƮ�� �߰��Ǿ����ϴ�!");
			}
		</script>
	</form>
</body>
</html>