<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="db.DBConnection" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.net.URLEncoder"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/mystyle.css"/>
</head>
<body onload="checkFunc()">
	<%
		
	%>
	<header>
		<h1>
			<img src="./media/images,shop.png" width="50" height="50"/><a href="index.jsp">Web Shop</a>
		</h1>
	</header>
		<nav>
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="About us.jsp">About us</a></li>
				<li><a href="Discount Sale.jsp">Discount Sale</a></li>
				<li><a href="My Account.jsp">My Account</a></li>
				<li><a href="Contacts.jsp">Contacts</a></li>
			</ul>
		</nav>
		<aside id="left">
			<h4>카테고리</h4>
			<ul>
				<li><a target="iframe1" href="computer.jsp">컴퓨터</a></li>
				<li><a target="iframe1" href="clothings.jsp">의류</a></li>
				<li><a target="iframe1" href="music.jsp">음악</a></li>
				<li><a target="iframe1" href="movie.jsp">영화</a></li>
				<li><a target="iframe1" href="sports_leisure.jsp">스포츠/레저</a></li>
				<li><a target="iframe1" href="furniture_interior.jsp">가구/인테리어</a></li>
				<li><a target="iframe1" href="foods.jsp">식품</a></li>
			</ul>
		</aside>
		<section id="main">
			<iframe name="iframe1" src="computer.jsp" width="1125" height="400" seamless></iframe>
		</section>
		<aside id="right">
			<div id="shopcart">
				<h4>Shopping Cart</h4>
				<br/>
				<a href="shopcart.jsp">쇼핑카트 보기</a>
			</div>
			<div id="login">
				<form method="post" action="./login_status.jsp">
			        <%if(session.getAttribute("loginIdCheck")=="fail" || session.getAttribute("loginIdCheck")==null){%>
			        	<h4>Log In<h4>
			        	<br/>
			        	아이디
						<input type="text" name="id"/><br/>
						패스워드
						<input type="password" name="password"/><br/>
						<input type="submit" value="로그인"/>
						<input type="reset" value="초기화"/>
						<br/>
						<br/>
			        <%}
			        else if(session.getAttribute("loginIdCheck")=="success"){%>
			        	<p id="curId"></p>
			        	<br/>
			        	<a href="index.jsp" onclick="logoutFunc()">로그아웃</a>
			       <%
			       }
			        %>
				</form>
				
				
				<a href="register.jsp" target="_blank" id="register">회원가입</a>
				<br/>
				<a href="forgetpwd.html" id="forgot">비밀번호분실</a>
			</div>
		</aside>
		<footer>Copyright (c) 2018 Web Shop</footer>
		<script>
			var inputId="<%=session.getAttribute("currentId")%>";
			var str1="<%=session.getAttribute("loginIdCheck")%>";
			function checkFunc(){
			 	if(str1=="null"){
			 		curId=null;
			 	}
			 	else if(str1=="fail"){
			 		alert("로그인에 실패하였습니다.");
			 	}
			 	else if(str1="success"){
			 		curId=inputId.trim();
			 		<%
			 			try{
			 				String currId=(String)session.getAttribute("currentId");
				 			System.out.println(currId);
				 			String Id2 = URLEncoder.encode(currId, "UTF-8");
				 			System.out.println(Id2);
				 			Cookie Id=new Cookie("currId",URLEncoder.encode(currId,"utf-8"));
				 			response.addCookie(Id);
			 			}
			 			catch(Exception e){
			 				System.out.println("올바르지 않은 입력.");
			 			}
			 			
			 		%>
			 		document.all.curId.innerText=curId+" 님 환영합니다!";
			 	}
			}
			function logoutFunc(){
				<%
					session.setAttribute("loginIdCheck", null);
					session.setAttribute("currentId", null);
					String currentId=null;
				    String currentId2=null;
				    try{
				    	Cookie[] cookies = request.getCookies();
					    	for(int i=0; i< cookies.length; i++){
					    		cookies[i].setMaxAge(0);
					    	    cookies[i].setPath("/");
					    	    response.addCookie(cookies[i]);
					    	}
				    	System.out.println("쿠키가 삭제되었습니다.");
				    }
				    catch(Exception e){
				   		System.out.println(e);
				   	}
				%>
			}
		</script>
</body>
</html>