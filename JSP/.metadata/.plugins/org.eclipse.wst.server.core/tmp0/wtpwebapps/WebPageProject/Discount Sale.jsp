<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/mystyle.css"/>
	<style>
		img.a{
			float:left;
			margin-left:10%;
		}
		table.t1{
			border-collapse:collapse;
			border-top:#F3F1E9;
			border-left:#F3F1E9;
			border-right:#F3F1E9;
			width:1000px;
			text-align:center;
		}
		font.fonts{ text-decoration:line-through }
	</style>
</head>
<body>
	<form method="post" action="./shopcart.jsp">
		<nav>
			<h1>Discount Sale</h1>
		</nav>
		<div align="center">
			<table border="1" class="t1">
			<tr>
				<td>
					<br/>
					<img class="a" src="./media/Taeyeon1.png" width="140" height="140">
				</td>
				<td>
					<p>&nbsp;�¿� - 1�� [MY VOICE] (DELUXE EDITION)</p>
				<br>
					<p>&nbsp;[�ʵ� ���� ������ (�뿡 ��Ƽ�) ����]</p>
					<p>&nbsp;���� <meter value="0.9"></meter></p>
				</td>
				<td>
					<p>���� : <font class="fonts">21000��</font> / 18900��</p>
					<p>(10% ����)</p>
				</td>
				<td>
					<input type="submit" name="album" value="����īƮ�� �߰��ϱ�" onclick="alertfunc()">			
				</td>
			</tr>
			<tr>
				<td>
					<br/>
					<img class="a" src="./media/Taeyeon2.png" width="140" height="140">
				</td>
				<td>
					<p>&nbsp;�¿� - WHY (2ND �̴Ͼٹ�) (TAEYEON - WHY (2ND MINI ALBUM))</p>
				<br>
					<p>&nbsp;[�ʵ� ���� ������ (�뿡 ��Ƽ�) ����]</p>
					<br/>
					<p>&nbsp;���� <meter value="1"></meter></p>
				</td>
				<td>
					<p>���� : <font class="fonts">21000��</font> / 18900��</p>
					<p>(10% ����)</p>
				</td>
				<td>
					<input type="submit" name="album" value="����īƮ�� �߰��ϱ�" onclick="alertfunc()"/>			
				</td>
				<br/>
			</tr>
			<tr>
				<td>
					<br/>
					<img class="a" src="./media/Taeyeon3.png" width="140" height="140">
				</td>
				<td>
					<p>&nbsp;�¿� - I (1ST �̴Ͼٹ�) (TAEYEON - I (1ST MINI ALBUM))</p>
				<br>
					<p></p>
					<br/>
					<p>&nbsp;���� <meter value="0.95"></meter></p>
				</td>
				<td>
					<p>���� : <font class="fonts">21000��</font> / 18900��</p>
					<p>(10% ����)</p>
				</td>
				<td>
					<input type="submit" name="album" value="����īƮ�� �߰��ϱ�" onclick="alertfunc()"/>			
				</td>
			</tr>
			<tr>
				<td>
					<br/>
					<img class="a" src="./media/Taeyeon4.png" width="140" height="140">
				</td>
				<td>
					<p>&nbsp;�¿� - 1�� [MY VOICE]</p>
				<br>
					<p>&nbsp;[�ʵ� ���� ������ (�뿡 ��Ƽ�) ����]</p>
					<br/>
					<p>&nbsp;���� <meter value="0.9"></meter></p>
				</td>
				<td>
					<p>���� : <font class="fonts">21000��</font> / 18900��</p>
					<p>(10% ����)</p>
				</td>
				<td>
					<input type="submit" name="album" value="����īƮ�� �߰��ϱ�" onclick="alertfunc()"/>			
				</td>
			</tr>
		</table>	
		<footer>
			<br/>
			<a href="index.jsp">Back to Home</a>
			<br/>
			Copyright (c) 2018 Web Shop
		</footer>
		</div>
		<script>
			function alertfunc(){
				alert("����īƮ�� �߰��Ǿ����ϴ�!");
			}
		</script>
	</form>
</body>
</html>