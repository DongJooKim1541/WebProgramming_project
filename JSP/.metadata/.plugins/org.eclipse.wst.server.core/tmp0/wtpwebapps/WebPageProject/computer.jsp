<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
		.best #left{
			background-color:yellow;
		}
		.submain #left{
			background-color:blue;
		}
		.best #right{
			background-color:yellow;
		}
		.submain #right{
			background-color:blue;
		}
		div#left{
			width: 550px;
			margin-top: 20px;
			float: left;
		}
		div#right{
			padding:0px;
			margin-top: 20px;
			margin-left:10px;
			float: left;
		}
</style>
</head>
<body>
	<form method="post" action="./shopcart.jsp">
		<section class="best">
		<div id="left">
			<img src="./media/computer.jpg" width="100" height="100"/>
			<p>�����ϰ� ������ ��ü�� 
			�ھ� i5 3470�� ������ GT630�� ����<br/>
			CPU: ���� �ھ� i5 3470<br/>
			����: 1,200,000��
			</p>
			<input type="submit" name="computer" value="����īƮ�� �߰��ϱ�" onclick="alertfunc()"/>
		</div>
		<div id="right">
			<img src="./media/notebook.png" width="100" height="100"/>
			<p>Full-HD�� ������ ȭ��, 
			ISP�гη� �þ߰��� ����!<br/>
			CPU: ���� �ھ� i7 3630 QM</br>
			����: 1,200,000��
			</p>
			<input type="submit" name="computer" value="����īƮ�� �߰��ϱ�" onclick="alertfunc()"/>
		</div>
		</section>
		<section class="submain">
		<div id="left">
			<img src="./media/computer.jpg" width="100" height="100"/>
			<p>�����ϰ� ������ ��ü�� 
			�ھ� i5 3470�� ������ GT630�� ����<br/>
			CPU: ���� �ھ� i5 3470<br/>
			����: 1,200,000��
			</p>
			<input type="submit" name="computer" value="����īƮ�� �߰��ϱ�" onclick="alertfunc()"/>
		</div>
		<div id="right">
			<img src="./media/notebook.png" width="100" height="100"/>
			<p>Full-HD�� ������ ȭ��, 
			ISP�гη� �þ߰��� ����!<br/>
			CPU: ���� �ھ� i7 3630 QM</br>
			����: 1,200,000��
			</p>
			<input type="submit" name="computer" value="����īƮ�� �߰��ϱ�" onclick="alertfunc()"/>
		</div>
		</section>
		<section class="submain">
		<div id="left">
			<img src="./media/computer.jpg" width="100" height="100"/>
			<p>�����ϰ� ������ ��ü�� 
			�ھ� i5 3470�� ������ GT630�� ����<br/>
			CPU: ���� �ھ� i5 3470<br/>
			����: 1,200,000��
			</p>
			<input type="submit" name="computer" value="����īƮ�� �߰��ϱ�" onclick="alertfunc()"/>
		</div>
		<div id="right">
			<img src="./media/notebook.png" width="100" height="100"/>
			<p>Full-HD�� ������ ȭ��, 
			ISP�гη� �þ߰��� ����!<br/>
			CPU: ���� �ھ� i7 3630 QM</br>
			����: 1,200,000��
			</p>
			<input type="submit" name="computer" value="����īƮ�� �߰��ϱ�" onclick="alertfunc()"/>
		</div>
		</section>
	</form>
	<script>
		function alertfunc(){
			alert("����īƮ�� �߰��Ǿ����ϴ�!");
		}
	</script>
</body>
</html>