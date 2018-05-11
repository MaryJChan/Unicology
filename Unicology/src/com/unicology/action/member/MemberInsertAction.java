package com.unicology.action.member;

import java.io.IOException;

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
		String mid = request.getParameter("get_id");
		String mpw = request.getParameter("get_pw");
		String mname = request.getParameter("get_name");
		String mphone = request.getParameter("get_phone");
		
		
		String email = request.getParameter("email");
		String email_address = request.getParameter("email_address");
		String memail = email+"@"+email_address;

		String birthyear = request.getParameter("birthyear");
		String birthmonth = request.getParameter("birthmonth");
		String birthday = request.getParameter("birthday");
		String mbirth = birthyear+birthmonth+birthday;
		
		// 선택사항 입학~졸업기간
		
		
		MemberDTO mDto = new MemberDTO(mid, mpw, mname, mphone, memail);
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
