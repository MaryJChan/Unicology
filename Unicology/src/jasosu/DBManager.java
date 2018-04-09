package jasosu;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet; 

public class DBManager {
	
private static Connection conn;	

	private final static String DRIVER = "oracle.jdbc.driver.OracleDriver";
	private final static String URL = "jdbc:oracle:thin:@localhost:1521:XE";
	private final static String USER = "Mary";
	private final static String PASSWORD = "456527";	

	private DBManager() {			

	}		

	// 인스턴스를 생성 또는 기족 인스턴스를 반환하는 메서드
	public static Connection getConnection() {
		conn = null;		

		if(conn == null) {
			try {
				Class.forName(DRIVER);
				conn = DriverManager.getConnection(URL, USER, PASSWORD);
			} catch (Exception e) {
				e.printStackTrace();
			}				

		}		

		return conn;		

	}	

	public static void close (Connection conn, PreparedStatement pstmt) {
		try {
			if(conn != null){
				try {
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

			if(pstmt != null){
				try {
					pstmt.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void close (Connection conn, PreparedStatement pstmt, ResultSet rs) {
		try {
			if(conn != null){
				try {
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if(pstmt != null){
				try {
					pstmt.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

			if(rs != null){
				try {
					rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}