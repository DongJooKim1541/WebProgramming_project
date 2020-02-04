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
	// 한글 깨짐을 방지하기 위한 인코딩 처리
    request.setCharacterEncoding("euc-kr");
	// getParameter()를 이용해 넘겨진 파라미터 값을 얻어올 수 있다.
    // 파라미터 값을 얻을때 name= 에 지정해둔 값과 동일한 값을 인자로 지정해야 된다.
    String id = request.getParameter("id");
    Connection conn = null; // DB연결된 상태(세션)을 담은 객체
    Statement stmt=null;	//statement 객체
    PreparedStatement pstm = null;  // SQL 문을 나타내는 객체
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
 		out.println("올바르지 않은 입력.");
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
			System.out.println("연결을 종료합니다.");
		}
	}
	%>
</body>
</html>