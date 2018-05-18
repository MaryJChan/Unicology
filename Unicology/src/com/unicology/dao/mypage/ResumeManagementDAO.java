package com.unicology.dao.mypage;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.unicology.dto.jasowrite.JasoWriteDTO;
import com.unicology.mybatis.SqlMapConfig;

public class ResumeManagementDAO {
	
		// MyBatis 세팅값 호출
		SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
		
		// mapper에 접근하기 위한 SqlSession
		SqlSession sqlSession;
		
		int result = 0;
		int field_Num = 0;

		private ResumeManagementDAO() {
		}

		private static ResumeManagementDAO instance = new ResumeManagementDAO();

		public static ResumeManagementDAO getInstance() {
			return instance;
		}
		
		// 이력서 리스트 조회 (mypage 화면에서)
		public List<JasoWriteDTO> resumeListSelect() {
			System.out.println("이력서 리스트 조회 메서드 ====");
			
			sqlSession = sqlSessionFactory.openSession();
			List<JasoWriteDTO> resumelist = new ArrayList<>();
			
			try {
				
				resumelist = sqlSession.selectList("resumeSelect");
				
				for (JasoWriteDTO jasoWriteDTO : resumelist) {
					int jnum = jasoWriteDTO.getNum();
					String jtitle = jasoWriteDTO.getTitle();
					Date regdate = jasoWriteDTO.getRegdate();
					
					System.out.println("jnum : " + jnum);
					System.out.println("jtitle : " + jtitle);
					System.out.println("regdate : " + regdate);
					
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if(sqlSession != null) sqlSession.close();
			}
		
			return resumelist;
		}
		
		// 수정할 이력서 조회
		public List<JasoWriteDTO> resumeModifySelect(int rnum) {
			
			sqlSession = sqlSessionFactory.openSession();
			List<JasoWriteDTO> resumeModList = new ArrayList<>();
			
			try {
				resumeModList = sqlSession.selectList("resumeModifyList", rnum);
				
				for (JasoWriteDTO jasoWriteDTO : resumeModList) {
					int jno = jasoWriteDTO.getJno();
					int num = jasoWriteDTO.getNum();
					String title = jasoWriteDTO.getTitle();
					String question = jasoWriteDTO.getQuestion();
					String answer = jasoWriteDTO.getAnswer();
					String writer =jasoWriteDTO.getWriter();
					
					System.out.println("jno : " + jno);
					System.out.println("num : " + num);
					System.out.println("title : " + title);
					System.out.println("question : " + question);
					System.out.println("answer : " + answer);
					System.out.println("writer : " + writer);
				}
				
			} catch (Exception e) {
				e.printStackTrace(); 
			} finally {
				if(sqlSession != null) sqlSession.close();
			}
			
			
			return resumeModList;
		}
}
