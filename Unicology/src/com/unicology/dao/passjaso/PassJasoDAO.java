package com.unicology.dao.passjaso;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.unicology.dto.empinfo.EmpInfoDTO;
import com.unicology.dto.passjaso.PassJasoCriteriaDTO;
import com.unicology.mybatis.SqlMapConfig;

public class PassJasoDAO {
	
	// MyBatis 세팅값 호출
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	// mapper에 접근하기 위한 SqlSession
	SqlSession sqlSession;

	Connection conn = null;
    PreparedStatement pstmt = null;
    int result;
    int field_Num = 0;    
    
    private PassJasoDAO() {

	}

	private static PassJasoDAO instance = new PassJasoDAO();

	public static PassJasoDAO getInstance() {
		return instance;
	}

	// 합격자소서 페이지 이동시 pagenation용 코딩
	public List<EmpInfoDTO> passJasoListAll(PassJasoCriteriaDTO criDto) {
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

	// 합격 자소서 List 총개수
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
