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
			<img src="./media/sports_product1.jpg" width="100" height="100"/>
			<p>[���������] �ǳ����� ���׸� F10 168 ���� ����
			PINARELLO DOG MA F10 168 Sulfur Yellow 2017<br/>
			����: 6,200,000��
			</p>
			<input type="submit" name="s_l" value="����īƮ�� �߰��ϱ�" onclick="alertfunc()"/>
		</div>
		<br/>
			<div id="product2">
			<img src="./media/sports_product2.jpg" width="100" height="100"/>
			<p>[�ؿ�] �ݳ��� V2-r ������
			COLNAGO V2-r TNRD</br>
			����: 6,200,000��
			</p>
			<input type="submit" name="s_l" value="����īƮ�� �߰��ϱ�" onclick="alertfunc()"/>
		</div>
		<script>
			function alertfunc(){
				alert("����īƮ�� �߰��Ǿ����ϴ�!");
			}
		</script>
	</form>
</body>
</html>