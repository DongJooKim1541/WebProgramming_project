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
</head>
<body>
	<% 
	// �ѱ� ������ �����ϱ� ���� ���ڵ� ó��
    request.setCharacterEncoding("euc-kr");
	// getParameter()�� �̿��� �Ѱ��� �Ķ���� ���� ���� �� �ִ�.
    // �Ķ���� ���� ������ name= �� �����ص� ���� ������ ���� ���ڷ� �����ؾ� �ȴ�.
    String id = request.getParameter("id");
    Connection conn = null; // DB����� ����(����)�� ���� ��ü
    Statement stmt=null;	//statement ��ü
    PreparedStatement pstm = null;  // SQL ���� ��Ÿ���� ��ü
    ResultSet rs = null;
	String sql="select userId from HomepageUser where userId='"+id+"'";
	String checkId=null;
	int a=0;
	try{
		conn=DBConnection.getConnection();
		pstm=conn.prepareStatement(sql);
 		rs=pstm.executeQuery(sql);
 		while(rs.next()){
 			checkId=rs.getString("userId");
 		}
 	}
 	catch(Exception e){
 		out.println("�ùٸ��� ���� �Է�.");
 	}
	finally{
		if(checkId!=null){
			session.setAttribute("idCheck", "fail");
			response.sendRedirect("register.jsp");
		}
		else{
			session.setAttribute("idCheck", id);
			response.sendRedirect("register.jsp");
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