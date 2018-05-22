package com.unicology.dao.jasowrite;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.unicology.dao.jasosu.JasosuDAO;
import com.unicology.dto.jasowrite.JasoWriteDTO;
import com.unicology.mybatis.SqlMapConfig;

public class JasoWriteDAO {

	// MyBatis 세팅값 호출
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	// mapper에 접근하기 위한 SqlSession
	SqlSession sqlSession;

    Connection conn = null;
    PreparedStatement pstmt = null;
    int result;
    int field_Num = 0;    
    
    private JasoWriteDAO() {}

	private static JasoWriteDAO instance = new JasoWriteDAO();

	public static JasoWriteDAO getInstance() {
		return instance;
	}
	
	// 자소서작성 Insert에 필요한 num값 select
	public int jasoWriteSelectNum() {
		sqlSession = sqlSessionFactory.openSession();
		int num = 0;
		try {
			num = sqlSession.selectOne("jasoWriteSelectNum");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return num;
	}

	// 자소서 작성 Insert
	public void jasoWriteRegister(JasoWriteDTO jwDto) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.insert("jasoWriteRegister", jwDto);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
	}

	public void jasoWriteUpdate(JasoWriteDTO jwDto) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.update("jasoWriteUpdate", jwDto);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}		
	}

	public void jasoWriteDelete(Integer num) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.update("jasoWriteDelete", num);
			
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}				
	}
}
