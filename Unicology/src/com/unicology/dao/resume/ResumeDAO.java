package com.unicology.dao.resume;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.unicology.dto.resume.ResumeDTO;

public class ResumeDAO {

		// MyBatis 세팅값 호출
		SqlSessionFactory sqlSessionFactory = com.unicology.mybatis.SqlMapConfig.getSqlSession();
		
		//mapper에 접근하기 위한 SqlSession
		SqlSession sqlSession;
		
		private ResumeDAO() {
		}
		
		private static ResumeDAO instance = new ResumeDAO();
		public static ResumeDAO getInstance() {
			return instance;
		}
		
	int result;	
	
	// ID 중복체크
		public int resumeInsert(ResumeDTO rDto) {
			System.out.println("=====resumeInsert탐=====");
			sqlSession = sqlSessionFactory.openSession();
			try {
				
				result = sqlSession.insert("resumeinsert",rDto);
				sqlSession.commit();
				if (result > 0) {
					System.out.println("회원 등록 성공");
				}else {
					System.out.println("회원 등록 실패");
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				if(sqlSession != null)	sqlSession.close();
			}
			
			return result;
		}
		
}
