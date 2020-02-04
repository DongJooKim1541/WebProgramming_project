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
	// �ѱ� ������ �����ϱ� ���� ���ڵ� ó��
    request.setCharacterEncoding("euc-kr");
	// getParameter()�� �̿��� �Ѱ��� �Ķ���� ���� ���� �� �ִ�.
    // �Ķ���� ���� ������ name= �� �����ص� ���� ������ ���� ���ڷ� �����ؾ� �ȴ�.
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    //���⼭ �о�� ���̵�� ��й�ȣ�� ���� �� ó��
    Connection conn = null; // DB����� ����(����)�� ���� ��ü
    Statement stmt=null;	//statement ��ü
    PreparedStatement pstm = null;  // SQL ���� ��Ÿ���� ��ü
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
 				System.out.println("�ùٸ��� ���� �Է�1.");
 			}
 		}
 	}
 	catch(Exception e){
 		System.out.println("�ùٸ��� ���� �Է�2.");
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
			System.out.println("������ �����մϴ�.");
		}
	}
    %>
</body>
</html>