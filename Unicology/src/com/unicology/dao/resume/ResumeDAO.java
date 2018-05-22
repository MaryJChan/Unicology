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
		List<ResumeDTO> list ;
		
		// 이력서 등록
		public int resumeInsert(ResumeDTO rDto) {
			System.out.println("=====resumeInsert탐=====");
			sqlSession = sqlSessionFactory.openSession();
			try {
				
				result = sqlSession.insert("resumeinsert",rDto);
				sqlSession.commit();
				if (result > 0) {
					System.out.println("이력서 등록 성공");
				}else {
					System.out.println("이력서 등록 실패");
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				if(sqlSession != null)	sqlSession.close();
			}
			
			return result;
		}

		// 이력서 열람
		public List<ResumeDTO> resumeView(String resume_no,String writer) {
			System.out.println("=====resumeModify탐=====");
			sqlSession = sqlSessionFactory.openSession();
			
			
			try {
				System.out.println("resume_no : " + resume_no);
				System.out.println("writer : " + writer);
				ResumeDTO rDto = new ResumeDTO(resume_no, writer);
				
				list = sqlSession.selectList("resumeModify",rDto);
				System.out.println("resumemodify list : "+ list.size());
				
				
				
				sqlSession.commit();
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				if(sqlSession != null)	sqlSession.close();
			}
			return list;
		}
		
}
