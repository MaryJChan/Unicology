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
		
		// 이력서 리스트 조회
		public List<JasoWriteDTO> resumeListSelect() {
			sqlSession = sqlSessionFactory.openSession();
			List<JasoWriteDTO> resumelist = new ArrayList<>();
			
			try {
				resumelist = sqlSession.selectList("resumeSelect");
				for (JasoWriteDTO jasoWriteDTO : resumelist) {
					int jno = jasoWriteDTO.getJno();
					int jnum = jasoWriteDTO.getNum();
					String jtitle = jasoWriteDTO.getTitle();
					String jquestion = jasoWriteDTO.getQuestion();
					String janswer = jasoWriteDTO.getAnswer();
					Date regdate = jasoWriteDTO.getRegdate();
					
					System.out.println("jno : " + jno);
					System.out.println("jnum : " + jnum);
					System.out.println("jtitle : " + jtitle);
					System.out.println("jtitle : " + jquestion);
					System.out.println("janswer : " + janswer);
					System.out.println("regdate : " + regdate);
					System.out.println("jno : " + jno);
				}
				
			} catch (Exception e) {
				
			} finally {
				if(sqlSession != null) sqlSession.close();
			}
		
			return resumelist;
		}

}
