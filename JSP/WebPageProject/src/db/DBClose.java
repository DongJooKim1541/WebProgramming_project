package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class DBClose {
	public static Connection conn = null; // DB연결된 상태(세션)을 담은 객체
    public static Statement stmt=null;	//statement 객체
    public static PreparedStatement pstm = null;  // SQL 문을 나타내는 객체
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
			System.out.println("연결을 종료합니다.");
		}
	}
}
