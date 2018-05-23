package com.unicology.dao.empinfo;

import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.unicology.dto.empinfo.EmpInfoCriteriaDTO;
import com.unicology.dto.empinfo.EmpInfoDTO;
import com.unicology.mybatis.SqlMapConfig;

public class EmpInfoDAO {
	// MyBatis 세팅값 호출
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	// mapper에 접근하기 위한 SqlSession
	SqlSession sqlSession;
	// Connection conn = null;
	// PreparedStatement pstmt = null;
	int result = 0;
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
			if (result > 0) {
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

	// 2018.05.07 박아영 추가
	// 채용공고 리스트 조회
	public List<EmpInfoDTO> jobListAll(EmpInfoCriteriaDTO empInfoCriDto) {
		sqlSession = sqlSessionFactory.openSession();
		List<EmpInfoDTO> list = new ArrayList<>();
		try {
			list = sqlSession.selectList("jobListSelect", empInfoCriDto);

			if (list.size() != 0) {
				System.out.println("jobList 조회 성공");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return list;
	}

	// 전체 게시글 수 totalCount
	public int totalCount(String searchKey) {
		sqlSession = sqlSessionFactory.openSession();
		EmpInfoDTO eDto = new EmpInfoDTO();
		try {
			if (searchKey == null) {
				eDto.setSearchkey("emptyKey");
			} else {
				eDto.setSearchkey(searchKey);
			}

			String key = eDto.getSearchkey();
			System.out.println(key);
			result = sqlSession.selectOne("searchCountPaging", eDto);

			if (result > 0) {
				System.out.println("검색 건수 존재 : " + result);
			} else {
				System.out.println("검색 건수 존재 X" + result);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return result;
	}

	// 채용공고 (근무조건에 따른) 검색
	public List<EmpInfoDTO> empinfoSearchSelect(EmpInfoCriteriaDTO empInfoCriDto) {
		sqlSession = sqlSessionFactory.openSession();
		List<EmpInfoDTO> searchList = new ArrayList<>();

		try {
			searchList = sqlSession.selectList("empinfoSearchSelect", empInfoCriDto);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}

		return searchList;
	}
	
	// 직무 조회
	public List<EmpInfoDTO> dutySelect() {
		sqlSession = sqlSessionFactory.openSession();
		List<EmpInfoDTO> dutyList = new ArrayList<>();
		
		try {
			dutyList = sqlSession.selectList("dutySelect");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) sqlSession.close();
		}
		
		return dutyList;
	}
	
	public EmpInfoDTO titleCheck(String title) {
		sqlSession = sqlSessionFactory.openSession();
		String titleCheck = null;
		EmpInfoDTO eDto = null;
		try {
			eDto = sqlSession.selectOne("empinfoTitleCheck", title);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return eDto;
	}

	public void EmpInfo_Update(EmpInfoDTO eDto) {
		sqlSession = sqlSessionFactory.openSession();

		try {
			sqlSession.update("empinfoUpdate", eDto);
			sqlSession.commit();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
	}
	
	// 스크랩 eno 를 이용해서 채용공고 조회하기 
	public List<EmpInfoDTO> scrapSelect(int eno) {
		sqlSession = sqlSessionFactory.openSession();
		List<EmpInfoDTO> scrapList = new ArrayList<>(); 
		try {
			scrapList = sqlSession.selectList("scrapSelectView", eno);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) sqlSession.close();
		}
		
		return scrapList;
	}
}
