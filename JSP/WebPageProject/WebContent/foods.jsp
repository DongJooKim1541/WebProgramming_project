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
			<img src="./media/food1.PNG" width="100" height="100"/>
			<p>LA����(3�κ�/�� ������ ���ǵ尡����,��� ��� choice�� �̱��� ��������/Ȩ��Ƽ,�մ��ʴ�����,���ϻ�,��������,���ϻ�,��������,�����̻�����,��������ǰ,�������丮,�����̿丮)<br/>
			����: 15,000��
			</p>
			<input type="submit" name="food" value="����īƮ�� �߰��ϱ�" onclick="alertfunc()"/>
		</div>
		<br/>
			<div id="product2">
			<img src="./media/food2.PNG" width="100" height="100"/>
			<p>�κθ� ��Į�θ� ����</br>
			����: 15,000��
			</p>
			<input type="submit" name="food" value="����īƮ�� �߰��ϱ�" onclick="alertfunc()"/>
		</div>
		<script>
			function alertfunc(){
				alert("����īƮ�� �߰��Ǿ����ϴ�!");
			}
		</script>
	</form>
</body>
</html>