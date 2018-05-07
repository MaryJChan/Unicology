package com.unicology.dao.jasosu;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.unicology.dto.jasosu.JasosuDTO;
import com.unicology.mybatis.SqlMapConfig;

public class JasosuDAO {
	
	// MyBatis 세팅값 호출
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	// mapper에 접근하기 위한 SqlSession
	SqlSession sqlSession;

    Connection conn = null;
    PreparedStatement pstmt = null;
    int result;
    int field_Num = 0;    
    
    private JasosuDAO() {

	}

	private static JasosuDAO instance = new JasosuDAO();

	public static JasosuDAO getInstance() {
		return instance;
	}
    
    
    public void Jaso_Insert(JasosuDTO jDto) {
    	sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.insert("jasosu", jDto);
			sqlSession.commit();
			if(result > 0) {
				System.out.println("jasosu크롤링 성공");
			} else {
				System.out.println("jasosu크롤링 실패");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
    }
}