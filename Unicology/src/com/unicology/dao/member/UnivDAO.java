package com.unicology.dao.member;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.unicology.dto.member.UnivDTO;
import com.unicology.mybatis.SqlMapConfig;

public class UnivDAO {
	// MyBatis 세팅값 호출
		SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
		// mapper에 접근하기 위한 SqlSession
		SqlSession sqlSession;

	    Connection conn = null;
	    PreparedStatement pstmt = null;
	    int result;
	    
	    private UnivDAO() {

		}

		private static UnivDAO instance = new UnivDAO();

		public static UnivDAO getInstance() {
			return instance;
		}
	    
	    
	    public void UnivDAO_insert(UnivDTO uDto) {
	    	sqlSession = sqlSessionFactory.openSession();
			try {
				result = sqlSession.insert("univInsert", uDto);
				sqlSession.commit();
				if(result > 0) {
					System.out.println("univ Xml Parsing 성공");
				} else {
					System.out.println("univ Xml Parsing 실패");
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close();
			}
	    }
}
