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
<body onload="alertfunc()">
	<% 
	// �ѱ� ������ �����ϱ� ���� ���ڵ� ó��
    request.setCharacterEncoding("euc-kr");
	// getParameter()�� �̿��� �Ѱ��� �Ķ���� ���� ���� �� �ִ�.
    // �Ķ���� ���� ������ name= �� �����ص� ���� ������ ���� ���ڷ� �����ؾ� �ȴ�.
    String id = request.getParameter("id");
    String pwd = request.getParameter("password");
    String name = request.getParameter("name");
 	// ������ ��� �Ķ���� �̸��� �Ѵ� gender�� �����ϹǷ� �迭�� �޾ƾ� �ȴ�.
    String[] gender = request.getParameterValues("gender");
 	String birthday = request.getParameter("birthday");
 	String email = request.getParameter("email");
 	String tel = request.getParameter("tel");
 	
    Connection conn = null; // DB����� ����(����)�� ���� ��ü
    Statement stmt=null;	//statement ��ü
    PreparedStatement pstm = null;  // SQL ���� ��Ÿ���� ��ü
    ResultSet rs = null;
	String sql="insert into HomePageUser values ('"+id+"','"+pwd+"','"+name+"','"+email+"',"+0+",'"+gender[0]+"','"+birthday+"','"+tel+"','willkim4927')";
	try{
 		conn=DBConnection.getConnection();
 		pstm=conn.prepareStatement(sql);
 		pstm.executeUpdate();
 		pstm=conn.prepareStatement("commit");
 		pstm.executeUpdate();
 	}
 	catch(Exception e){
 		out.println("�ùٸ��� ���� �Է�.");
 	}
    finally{
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
<script>
	function alertfunc(){
		//���Ἲ �������� ����Ǿ����� ��� ���庸��.
		alert("ȸ�������� �Ϸ�Ǿ����ϴ�!");
		location.href="./index.jsp";
	}
</script>
</html>