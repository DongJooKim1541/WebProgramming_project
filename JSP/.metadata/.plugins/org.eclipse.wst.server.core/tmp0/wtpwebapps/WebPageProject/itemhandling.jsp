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
</head>
<body onload="isUploading()">
	<%
	
	String itemName=request.getParameter("item_name");
	String itemNum=request.getParameter("item_num");
	String itemPrice=request.getParameter("price");
	String itemImage=request.getParameter("image");
	System.out.println(itemName);
	System.out.println(itemNum);
	System.out.println(itemPrice);
	System.out.println(itemImage);
 	Connection conn = null; // DB����� ����(����)�� ���� ��ü
    Statement stmt=null;	//statement ��ü
    PreparedStatement pstm = null;  // SQL ���� ��Ÿ���� ��ü
    ResultSet rs = null;
	try{
		conn=DBConnection.getConnection();
		pstm=conn.prepareStatement("insert into item values('"+itemNum+"',"+itemPrice+",'./media/"+itemImage+"','"+itemName+"','willkim4927')");
		System.out.println("insert into item values('"+itemNum+"',"+itemPrice+",'./media/"+itemImage+"','"+itemName+"','willkim4927')");
		pstm.executeUpdate();
		System.out.println("���ε� ����");
		pstm=conn.prepareStatement("commit");
		pstm.executeUpdate();
	}
	catch(Exception e){
		System.out.println("���ε� ����"+e);
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
	function isUploading(){
		location.href="./admin.jsp";
	}
</script>
</html>