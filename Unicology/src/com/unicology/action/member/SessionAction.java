package com.unicology.action.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.unicology.action.Action;
import com.unicology.action.ActionForward;
import com.unicology.dao.member.MemberDAO;
import com.unicology.dto.member.MemberDTO;

//쓰지 않음
public class SessionAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String url = "index.jsp";
		
			
		String mid = request.getParameter("login_id");
		String mpw = request.getParameter("login_pw");
		
		MemberDAO mDao = MemberDAO.getInstance();
		MemberDTO mDto = new MemberDTO(mid, mpw);
		//List<MemberDTO> list = mDao.sessionLogin(mDto);
		System.out.println("세션 로그인 성공했습니다.");		
		
		System.out.println(mDto.getMid()+"&"+mDto.getMname());
		
		if(mDto != null) {
			session.removeAttribute("loginUser"); // 세션 초기화 (혹시 남아있을 값 제거)
			session.setAttribute("loginUser", mDto);//세션에 값 담기
			
		}
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
