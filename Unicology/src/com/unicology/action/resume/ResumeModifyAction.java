package com.unicology.action.resume;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.unicology.action.Action;
import com.unicology.action.ActionForward;
import com.unicology.dao.resume.ResumeDAO;
import com.unicology.dto.member.MemberDTO;
import com.unicology.dto.resume.ResumeDTO;

public class ResumeModifyAction implements Action{
	
	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "resume/resumeModify.jsp";
		
		String resume_no = request.getParameter("resume_no");
		// 현재 로그인 한 계정 가져오기 
		HttpSession session = request.getSession();
		
		MemberDTO mDto = (MemberDTO)session.getAttribute("loginUser");
		String writer = mDto.getMid();
		System.out.println("ResumeManagementAction_writer : " + writer);
				
				
		ResumeDAO rDao = ResumeDAO.getInstance();
		List<ResumeDTO> list = rDao.resumeView(resume_no,writer);
		
		for (ResumeDTO resumeDTO : list) {
			System.out.println(resumeDTO.getResume_title());
			System.out.println(resumeDTO.getUserName());
		}
		
		request.setAttribute("resumeSearch", list);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
	
		return forward;
	}
}
