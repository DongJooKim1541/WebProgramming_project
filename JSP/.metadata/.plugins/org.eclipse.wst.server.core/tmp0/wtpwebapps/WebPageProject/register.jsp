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
	    	//비밀번호 같은지 확인하는 이벤트
	    	var password=document.getElementById("password").value;
	    	var passwordcheck=document.getElementById("passwordcheck").value;
	    	if(password==passwordcheck){
	    		document.register.action="./register_complete.jsp";
		    	document.register.method="post";
		    	document.register.submit();
	    	}
	    	else{
	    		alert("패스워드 확인 란에 패스워드를 다시 입력하여 주세요.");
	    	}
	    }
	    function idFunc(){
	    	var str="<%=session.getAttribute("idCheck")%>";
	    	if(str=="null"){
	    		document.getElementById("id").value="";
	    	}
	    	else if(str=="fail"){
	    		alert("id가 중복됩니다!");
	    		document.getElementById("id").value="";
	    	}
	    	else{
	    		alert("사용할 수 있는 id입니다.");
	    		document.getElementById("id").value=str;
	    	}
	    }
	</script>
	<div id="page-wrap">
		<form name="register" id="register">
			<fieldset>
				<legend>회원정보입력</legend>
				<table>
					<tr>
						<td><label for="name">아이디</label></td>
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
						<td><input type="button" value="중복확인" onclick="subFunc1()"></td>
					</tr>
					<tr>
						<td><label for="password1">패스워드</label></td>
						<td><input type="password" name="password" id="password"></td>
						<td></td>
					<tr>
						<td><label for="password2">패스워드 확인</label></td>
						<td><input type="password" name="passwordcheck" id="passwordcheck"></td>
						<td></td>
					</tr>
					<tr>
						<td><label for="name">이름</label></td>
						<td><input type="text" name="name"/></td>
						<td></td>
					</tr>
					<tr>
						<td><label for="tel">휴대폰 번호</label></td>
						<td><input type="tel" name="tel"/></td>
						<td></td>
					</tr>
					<tr>
						<td><label for="email">이메일</label></td>
						<td><input type="email" name="email"/></td>
						<td></td>
					</tr>
					<tr>
						<td><label for="dob">생일</label></td>
						<td><input type="number" name="birthday"/></td>
						<td></td>
					</tr>
					<tr>
						<td><input type="radio" name="gender" value="Male">남성
						<input type="radio" name="gender" value="Female">여성</td>
						<td></td>
					</tr>
				</table>
			</fieldset>
			<input type="button" value="제출" onclick="subFunc2()"/>
			<input type="reset" value="초기화"/>
		</form>
	</div>
</body>
</html>