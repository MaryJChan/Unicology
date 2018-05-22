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

public class MemberDeleteAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "index.unicol";
		
		String mid = request.getParameter("delete_id");
		String mpw = request.getParameter("delete_pw");
		String mname = request.getParameter("delete_name");
		
		MemberDAO mDao = MemberDAO.getInstance();
		MemberDTO mDto = new MemberDTO(mid, mpw, mname);
		
		int result = mDao.memDelete(mDto);
		if (result > 0) {
			System.out.println("휴면 계정으로 변경 성공");
			HttpSession session = request.getSession();
			session.removeAttribute("loginUser");
		}else {
			System.out.println("휴면 계정으로 변경 실패");
			
		}
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
		
	}
}
