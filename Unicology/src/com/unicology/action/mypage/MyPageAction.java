package com.unicology.action.mypage;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.unicology.action.Action;
import com.unicology.action.ActionForward;
import com.unicology.dao.mypage.MemberUpdateDAO;
import com.unicology.dto.member.MemberDTO;

public class MyPageAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("=======================MyPageAction========================");
		String url = "mypage/mypage.jsp";
		
		//회원정보 수정
		HttpSession session = request.getSession();
		
		MemberUpdateDAO muDao = MemberUpdateDAO.getInstance();
		
		// 현재 로그인 한 계정 가져오기 
		MemberDTO mDto = (MemberDTO)session.getAttribute("loginUser");
		String writer = mDto.getMid();
		System.out.println("MyPageAction_writer : " + writer);
		
		if(writer != null) {
			
			List<MemberDTO> memUpdateList = muDao.memUpdateSelect(writer);
			
			request.setAttribute("memUpdateList", memUpdateList);
			
		}
		
	
		


		
		// 스크랩 구현
		//muDao.scrapInsert(writer, enochk);
		
		ActionForward forward = new ActionForward();
        forward.setPath(url);
        forward.setRedirect(false);
		
		return forward;
	}

}
