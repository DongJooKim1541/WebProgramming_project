package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class DBClose {
	public static Connection conn = null; // DB����� ����(����)�� ���� ��ü
    public static Statement stmt=null;	//statement ��ü
    public static PreparedStatement pstm = null;  // SQL ���� ��Ÿ���� ��ü
    public static ResultSet rs = null;
	DBClose(){
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
}
