package com.unicology.dao.empinfo;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.unicology.dao.passjaso.PassJasoDAO;
import com.unicology.dto.empinfo.EmpInfoDTO;
import com.unicology.mybatis.SqlMapConfig;

public class EmpInfoDAO {
	// MyBatis 세팅값 호출
		SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
		// mapper에 접근하기 위한 SqlSession
		SqlSession sqlSession;

		Connection conn = null;
	    PreparedStatement pstmt = null;
	    int result;
	    int field_Num = 0; 
	    
	    private EmpInfoDAO() {

		}

		private static EmpInfoDAO instance = new EmpInfoDAO();

		public static EmpInfoDAO getInstance() {
			return instance;
		}
		
		// 크롤링된 EmpInfo Insert 코딩
		public void EmpInfo_Insert(EmpInfoDTO eDto) {
			sqlSession = sqlSessionFactory.openSession();
			try {
				result = sqlSession.insert("EmpInfo", eDto);
				sqlSession.commit();
				if(result > 0) {
					System.out.println("EmpInfo크롤링 성공");
				} else {
					System.out.println("EmpInfo크롤링 실패");
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close();
			}
		}
}
