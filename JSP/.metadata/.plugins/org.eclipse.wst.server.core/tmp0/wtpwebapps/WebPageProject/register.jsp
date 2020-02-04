<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="db.DBConnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/mystyle.css"/>
</head>
<body onload="idFunc()">
	
	<script language=javascript>
	    function subFunc1(){
	    	var element=document.getElementById("id").value;
	    	document.register.action="./idCheckForm.jsp";
	    	document.register.method="post";
	    	document.register.submit();
	    }
	    function subFunc2(){
	    	//��й�ȣ ������ Ȯ���ϴ� �̺�Ʈ
	    	var password=document.getElementById("password").value;
	    	var passwordcheck=document.getElementById("passwordcheck").value;
	    	if(password==passwordcheck){
	    		document.register.action="./register_complete.jsp";
		    	document.register.method="post";
		    	document.register.submit();
	    	}
	    	else{
	    		alert("�н����� Ȯ�� ���� �н����带 �ٽ� �Է��Ͽ� �ּ���.");
	    	}
	    }
	    function idFunc(){
	    	var str="<%=session.getAttribute("idCheck")%>";
	    	if(str=="null"){
	    		document.getElementById("id").value="";
	    	}
	    	else if(str=="fail"){
	    		alert("id�� �ߺ��˴ϴ�!");
	    		document.getElementById("id").value="";
	    	}
	    	else{
	    		alert("����� �� �ִ� id�Դϴ�.");
	    		document.getElementById("id").value=str;
	    	}
	    }
	</script>
	<div id="page-wrap">
		<form name="register" id="register">
			<fieldset>
				<legend>ȸ�������Է�</legend>
				<table>
					<tr>
						<td><label for="name">���̵�</label></td>
						<%
							if(session.getAttribute("idCheck")=="fail"){%>
								<td><input type="text" value="" name="id" id="id"></td>
						<% 
								session.invalidate();
						}
							else{
						%>
								<td><input type="text" name="id" id="id"></td>
						<% 
								session.invalidate();
						}%>
						<td><input type="button" value="�ߺ�Ȯ��" onclick="subFunc1()"></td>
					</tr>
					<tr>
						<td><label for="password1">�н�����</label></td>
						<td><input type="password" name="password" id="password"></td>
						<td></td>
					<tr>
						<td><label for="password2">�н����� Ȯ��</label></td>
						<td><input type="password" name="passwordcheck" id="passwordcheck"></td>
						<td></td>
					</tr>
					<tr>
						<td><label for="name">�̸�</label></td>
						<td><input type="text" name="name"/></td>
						<td></td>
					</tr>
					<tr>
						<td><label for="tel">�޴��� ��ȣ</label></td>
						<td><input type="tel" name="tel"/></td>
						<td></td>
					</tr>
					<tr>
						<td><label for="email">�̸���</label></td>
						<td><input type="email" name="email"/></td>
						<td></td>
					</tr>
					<tr>
						<td><label for="dob">����</label></td>
						<td><input type="number" name="birthday"/></td>
						<td></td>
					</tr>
					<tr>
						<td><input type="radio" name="gender" value="Male">����
						<input type="radio" name="gender" value="Female">����</td>
						<td></td>
					</tr>
				</table>
			</fieldset>
			<input type="button" value="����" onclick="subFunc2()"/>
			<input type="reset" value="�ʱ�ȭ"/>
		</form>
	</div>
</body>
</html>