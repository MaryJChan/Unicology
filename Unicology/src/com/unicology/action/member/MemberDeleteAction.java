package com.unicology.action.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.unicology.action.Action;
import com.unicology.action.ActionForward;
import com.unicology.dao.member.MemberDAO;
import com.unicology.dto.member.MemberDTO;

public class MemberDeleteAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String mid = request.getParameter("delete_id");
		String mpw = request.getParameter("delete_pw");
		String mname = request.getParameter("delete_name");
		String useyn = null;
		
		MemberDAO mDao = MemberDAO.getInstance();
		MemberDTO mDto = new MemberDTO(mid, mpw, mname);
		
		mDao.memDelete(mDto);
		
		
		return null;
	}
}
