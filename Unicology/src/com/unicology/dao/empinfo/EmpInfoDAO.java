package com.unicology.dao.empinfo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.unicology.dto.empinfo.EmpCriteriaDTO;
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

	// 채용 공고 페이지 이동시 pagenation용 코딩
	public List<EmpInfoDTO> empInfoListAll(EmpCriteriaDTO criDto) {
		sqlSession = sqlSessionFactory.openSession();
		List<EmpInfoDTO> list = new ArrayList<>();
		try {
			list = sqlSession.selectList("empListCriteria", criDto);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}

	// 채용 공고 List 총개수
	public int totalCount() {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.selectOne("empCountPaging");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}
}
