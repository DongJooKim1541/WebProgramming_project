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
<body>
	<% 
	// 한글 깨짐을 방지하기 위한 인코딩 처리
    request.setCharacterEncoding("euc-kr");
	// getParameter()를 이용해 넘겨진 파라미터 값을 얻어올 수 있다.
    // 파라미터 값을 얻을때 name= 에 지정해둔 값과 동일한 값을 인자로 지정해야 된다.
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    //여기서 읽어온 아이디랑 비밀번호에 따라 값 처리
    Connection conn = null; // DB연결된 상태(세션)을 담은 객체
    Statement stmt=null;	//statement 객체
    PreparedStatement pstm = null;  // SQL 문을 나타내는 객체
    ResultSet rs = null;
	String idSql="select userId from HomepageUser where userId='"+id+"'";
	String passwdSql="select pwd from HomepageUser where pwd='"+password+"'";
	String checkId=null;
	String checkPasswd=null;
	int a=0;
	try{
		conn=DBConnection.getConnection();
		pstm=conn.prepareStatement(idSql);
 		rs=pstm.executeQuery(idSql);
 		while(rs.next()){
 			checkId=rs.getString("userId");
 		}
 		if(checkId!=null){
 			try{
 				pstm=conn.prepareStatement(passwdSql);
 	 	 		rs=pstm.executeQuery(passwdSql);
 	 	 		while(rs.next()){
 	 	 			checkPasswd=rs.getString("pwd");
 	 	 		}
 			}
 			catch(Exception e){
 				System.out.println("올바르지 않은 입력1.");
 			}
 		}
 	}
 	catch(Exception e){
 		System.out.println("올바르지 않은 입력2.");
 	}
	finally{
		if(checkId!=null && checkPasswd!=null){
			session.setAttribute("loginIdCheck", "success");
			session.setAttribute("currentId",checkId);
			response.sendRedirect("index.jsp");
		}
		else{
			session.setAttribute("loginIdCheck", "fail");
			session.setAttribute("currentId","null");
			response.sendRedirect("index.jsp");
		}
		
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
    %>
</body>
</html>