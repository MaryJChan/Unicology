package com.unicology.dao.mypage;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.unicology.dto.member.MemberDTO;
import com.unicology.mybatis.SqlMapConfig;

public class MemberUpdateDAO {

	// MyBatis 세팅값 호출
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	
	// mapper에 접근하기 위한 SqlSession
	SqlSession sqlSession;

	int result = 0;
	int field_Num = 0;

	private MemberUpdateDAO() {
	}

	private static MemberUpdateDAO instance = new MemberUpdateDAO();

	public static MemberUpdateDAO getInstance() {
		return instance;
	}
	
	// 수정할 Member 조회
	public List<MemberDTO> memUpdateSelect(String writer) {
		
		sqlSession = sqlSessionFactory.openSession();
		List<MemberDTO> memUpdateList = new ArrayList<>(); 
		
		try {
			memUpdateList = sqlSession.selectList("memUpdateList", writer);
			//받아와야 할것 : 아이디 , 이름, 전화번호, 이메일 주소, 생년 월일, 성별 , 주소, 상세 주소
			for (MemberDTO memberDTO : memUpdateList) {
				String mid = memberDTO.getMid();
				String mname = memberDTO.getMname();
				String mphone = memberDTO.getMphone();
				String memail = memberDTO.getMemail();
				String mbirth = memberDTO.getMbirth();
				String mgender = memberDTO.getMsex();
				String maddr = memberDTO.getMaddr();
				
				System.out.println("mid :" + mid);
				System.out.println("mname" + mname);
				System.out.println("mphone :" + mphone);
				System.out.println("memail :" + memail);
				System.out.println("mbirth :" + mbirth);
				System.out.println("mgender :" + mgender);
				System.out.println("maddr :" + maddr);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) sqlSession.close();
		}
		
		return memUpdateList;
	}
	
	//회원 수정 (update)
	public int memberUpdate(MemberDTO mDto) {
		sqlSession = sqlSessionFactory.openSession();
		int result = 0;
		
		try {
			result = sqlSession.update("memberUpdate", mDto);
			sqlSession.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) sqlSession.close();
		}
		return result;
	}

}
