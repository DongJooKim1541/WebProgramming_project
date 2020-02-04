<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="db.DBConnection" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/mystyle.css"/>
<style>
	table.t1{
		border-top:#F3F1E9;
		border-left:#F3F1E9;
		border-right:#F3F1E9;
		text-align:center;
		margin-left:50%;
	}
	font.fonts{ text-decoration:line-through }
</style>
</head>
<body>
	<%
	Connection conn = null; // DB연결된 상태(세션)을 담은 객체
    Statement stmt=null;	//statement 객체
    PreparedStatement pstm = null;  // SQL 문을 나타내는 객체
    ResultSet rs = null;
    String currentId=null;
    String currentId2=null;
  	try{
  	  Cookie[] cookies=request.getCookies();
      for(int i=0;i<cookies.length;i++){
     		System.out.println(cookies[i].getName());
     		System.out.println(cookies[i].getValue());
      }
      currentId=cookies[1].getValue();
      int idx=currentId.indexOf("+");
      currentId2=currentId.substring(0,idx);
  	}
  	catch(Exception e){
  		System.out.println("로그인된 상태가 아님.");
  	}
    String checkId=null;
	String checkName=null;
	String checkEmail=null;
	int checkPoint=0;
	String checkSex=null;
	String checkBdate=null;
	String checkTel=null;
    if(currentId!=null){
    	String Sql="select * from HomepageUser where userId='"+currentId2+"'";
    	System.out.println(Sql);
    	try{
    		conn=DBConnection.getConnection();
    		pstm=conn.prepareStatement(Sql);
     		rs=pstm.executeQuery(Sql);
     		while(rs.next()){
     			checkId=rs.getString("userId");
     			checkName=rs.getString("name");
     			checkEmail=rs.getString("email");
     			checkPoint=rs.getInt("point");
     			checkSex=rs.getString("sex");
     			checkBdate=rs.getString("bdate");
     			checkTel=rs.getString("tel");
     		}
     	}
     	catch(Exception e){
     		System.out.println("올바르지 않은 입력2.");
     	}
    	finally{
    		System.out.println(checkId);
    		
    		try {
                if ( rs != null ){
                	rs.close();
                }   
                if ( pstm != null ){
                	pstm.close();
                }   
                if ( stmt != null ){
                	stmt.close(); 
                }
                if ( conn != null ){
                	conn.close(); 
                }
            }
            catch(Exception e) {
                throw new RuntimeException(e.getMessage());
            }
    		finally {
    			System.out.println("연결을 종료합니다.");
    		}
    	}
    }
    else{
    	System.out.println("로그인한 상태가 아님");
    }
	%>
	<nav>
		<h1>My Account</h1>
	</nav>
	</br></br>
	<%if(checkId!=null){ %>
		<table border="1px solid black" class="t1">
		<tr>
			<td>아이디</td>
			<td><%=checkId %></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%=checkName %></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><%=checkEmail %></td>
		</tr>
		<tr>
			<td>포인트</td>
			<td><%=checkPoint %></td>
		</tr>
		<tr>
			<td>성별</td>
			<td><%=checkSex %></td>
		</tr>
		<tr>
			<td>생일</td>
			<td><%=checkBdate %></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><%=checkTel %></td>
		</tr>
	<%} 
	else{%>
		<p>로그인이 되어있지 않습니다.</p>
	<%}%>
	<br/>
	<a href="index.jsp">Back to Home</a>
	<br/>
	Copyright (c) 2018 Web Shop
</body>
</html>