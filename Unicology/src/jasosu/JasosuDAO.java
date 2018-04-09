package jasosu;

import java.sql.Connection;
import java.sql.PreparedStatement;
public class JasosuDAO {
        Connection conn = null;
        PreparedStatement pstmt = null;
        int result;
        int field_Num = 0;    
        
        public void Jaso_Insert(JasosuDTO jDto) {
            
        	conn = DBManager.getConnection();
        	String sql = "INSERT INTO jaso "
        			   + "VALUES(jaso_seq.nextval, ?, ?, ?)";
        	
        	try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,  jDto.getJaso_field());
				pstmt.setString(2, jDto.getJaso_title());
				pstmt.setString(3, jDto.getJaso_contents());
        		
				result = pstmt.executeUpdate();
        					
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, pstmt);
			}
        }
}