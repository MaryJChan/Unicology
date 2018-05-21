package com.unicology.action.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.unicology.action.Action;
import com.unicology.action.ActionForward;
import com.unicology.dao.mypage.MemberUpdateDAO;
import com.unicology.dto.member.MemberDTO;

public class MemberUpdateAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("===================MemberUpdateAction==========================");
		
		String url = "mypage/mypage.jsp";
		
		HttpSession session = request.getSession();
				
		// 현재 로그인 한 계정 가져오기 
		MemberDTO mDto = (MemberDTO)session.getAttribute("loginUser");
		String writer = mDto.getMid();
		System.out.println("MemberUpdateAction_writer : " + writer);
				
		String mname = request.getParameter("memname");
		String mphone = request.getParameter("memphone");
		String email = request.getParameter("email");
		String email01 = request.getParameter("email01");
		String memail = email + "@" + email01;		
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		String mbirth = year + month + day;
		String mgender = request.getParameter("person_gender");
		String mpost = request.getParameter("sample6_postcode");
		String maddr = request.getParameter("sample6_address");
		String maddr_detail = request.getParameter("sample6_address2");
		
		System.out.println("mname" + mname);
		System.out.println("mphone" + mphone);
		System.out.println("memail" + memail);
		System.out.println("mbirth" + mbirth);
		System.out.println("mgender" + mgender);
		System.out.println("mpost" + mpost);
		System.out.println("maddr" + maddr);
		System.out.println("maddr_detail" + maddr_detail);
	
		mDto = new MemberDTO(writer, mname, mphone, memail, mpost, maddr, maddr_detail, mgender, mbirth);
		MemberUpdateDAO muDao = MemberUpdateDAO.getInstance();
		int memUpdateResult = muDao.memberUpdate(mDto);
		
		if(memUpdateResult > 0) {
			System.out.println("회원 수정 성공");
			url = "mypage.unicol";
			
			ActionForward forward = new ActionForward();
			forward.setPath(url);
			forward.setRedirect(false);
			
		} else {
			System.out.println("회원 수정 실패");
			url = "mypage/memberUpdate.jsp";
			
			ActionForward forward = new ActionForward();
			forward.setPath(url);
			forward.setRedirect(false);
		}
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
