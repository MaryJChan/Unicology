package com.unicology.dao.mypage;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.unicology.dto.mypage.ScrapDTO;
import com.unicology.mybatis.SqlMapConfig;

public class ScrapDAO {

	// MyBatis 세팅값 호출
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	
	// mapper에 접근하기 위한 SqlSession
	SqlSession sqlSession;

	int result = 0;
	int field_Num = 0;

	private ScrapDAO() {
	}

	private static ScrapDAO instance = new ScrapDAO();

	public static ScrapDAO getInstance() {
		return instance;
	}
	
	public int scrapInsert(String writer, String[] enochk) {
		
		sqlSession = sqlSessionFactory.openSession();
		ScrapDTO sDto = new ScrapDTO();
		int scrapResult = 0;
		try {
			
			for (String string : enochk) {
				String[] eno_split = string.split(",");
				
				for (int i = 0; i < eno_split.length; i++) {
					String enochk_split = eno_split[i];
					int eno = Integer.parseInt(enochk_split);
					sDto.setMid(writer);
					sDto.setScrap_eno(eno);
					scrapResult = sqlSession.insert("scrapInsert", sDto);
					sqlSession.commit();
				}
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) sqlSession.close();
		}
		return scrapResult;
	}
	
	
	public List<ScrapDTO> selectScrapEno(String writer){
		sqlSession = sqlSessionFactory.openSession();
		List<ScrapDTO> scrapEnoList = new ArrayList<>();
		
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) sqlSession.close();
		}
		
		return scrapEnoList;
	}
}
