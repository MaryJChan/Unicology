package com.unicology.action.member;

import java.io.IOException;

import javax.print.attribute.standard.RequestingUserName;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.unicology.action.Action;
import com.unicology.action.ActionForward;
import com.unicology.dao.member.MemberDAO;
import com.unicology.dto.member.MemberDTO;

public class MemberInsertAction implements Action{
	
	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String url = null;
		//필수 요소들 1차 테스트 
		// 아이디 , 비밀번호 , 이름 , 휴대폰번호, e-메일
		String mid = request.getParameter("get_id");
		String mpw = request.getParameter("get_pw");
		String mname = request.getParameter("get_name");
		String mphone = request.getParameter("get_phone");
		
		
		String email = request.getParameter("email");
		String email_address = request.getParameter("email_address");
		String memail = email+"@"+email_address;
		System.out.println("이메일 : "+memail );
		
//------------------------- 선택 사항 ---------------------------------
		
		// 주소 
		String mpost = request.getParameter("sample6_postcode");
		String maddr = request.getParameter("sample6_address");
		String maddr_detail = request.getParameter("sample6_address2");
		
		// 성별
		String msex = request.getParameter("sexval");
		System.out.println("성별"+msex);
		// 관심직무
		String mduty = request.getParameter("get_duty");
		
		// 생년월일
		String birthyear = request.getParameter("birthyear");
		String birthmonth = request.getParameter("birthmonth");
		String birthday = request.getParameter("birthday");
		String mbirth = birthyear+birthmonth+birthday;
		System.out.print("생일 : "+mbirth );
		
		// 최종학력
		String mgrade = request.getParameter("get_grade");
		// 학교이름
		String mschool = request.getParameter("get_school");
				
		// 입학년도 ~ 졸업년도
		String atten_ey = request.getParameter("atten_ey");
		String atten_em = request.getParameter("atten_em");
		String matten_eyem = atten_ey+atten_em;
		String atten_gy = request.getParameter("atten_gy");
		String atten_gm = request.getParameter("atten_gm");
		String matten_gygm = atten_gy+atten_gm;
		
		//학과 이름
		String mmajor = request.getParameter("get_major");
		
		
		MemberDTO mDto = new MemberDTO(mid, mpw, mname, mphone, memail, mpost, maddr,maddr_detail, msex, mbirth, mduty, mgrade,mschool, matten_eyem, matten_gygm,mmajor);
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.memInsert(mDto);
		
		if (result > 0 ) {
			System.out.println("유니콜로지 회원 등록 성공");
			url = "index.unicol";
		}else {
			System.out.println("유니콜로지 회원 등록 실패");
			url = "joinmember.unicol";
			
		}
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}
	
}
