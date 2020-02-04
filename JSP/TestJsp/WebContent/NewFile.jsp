<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
    String url = "jdbc:oracle:thin:@localhost:1521:DBSERVER";
    String user = "JSP";
    String pass = "jsp";
    Connection conn;
    Statement  stmt;
    PreparedStatement pstmt;
    ResultSet rs;
     
    Class.forName("oracle.jdbc.driver.OracleDriver");
    conn = DriverManager.getConnection(url, user, pass);
    stmt = conn.createStatement();
    pstmt=conn.prepareStatement("select * from DEPARTMENT");
    rs=pstmt.executeQuery();
    out.println("<table border=\"1\">");
    while(rs.next()){
        out.println("<tr>");
        out.println("<td>"+rs.getString("DEPTNO")+"</td>");
        out.println("<td>"+rs.getString("DEPTNAME")+"</td>");
        out.println("<td>"+rs.getString("FLOOR")+"</td>");
        out.println("</tr>");
    }
    out.println("</table>");
     
    conn.close();
%>
</body>
</html>