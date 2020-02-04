package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
 
public class DBConnection {
    public static Connection conn = null; // DB����� ����(����)�� ���� ��ü
    public static Statement stmt=null;	//statement ��ü
    public static PreparedStatement pstm = null;  // SQL ���� ��Ÿ���� ��ü
    public static ResultSet rs = null;  // �������� �����Ϳ� ���� ��ȯ���� ���� ��ü
    public static Connection getConnection() {
    	Connection conn = null;
        try {
        		String user = "JSP";
                String pw = "jsp";
                String url = "jdbc:oracle:thin:@localhost:1521:DBSERVER";
                
                Class.forName("oracle.jdbc.driver.OracleDriver");        
                conn = DriverManager.getConnection(url, user, pw);    
        } 
        catch (ClassNotFoundException ce) {
            System.out.println("DB ����̹� �ε� ���� :"+ce.toString());
        } 
        catch (SQLException se) {
            System.out.println("DB ���ӽ��� : "+se.toString());
        } 
        catch (Exception e) {
            System.out.println("Unkonwn error");
            e.printStackTrace();
        }
        return conn;     
    }
}
