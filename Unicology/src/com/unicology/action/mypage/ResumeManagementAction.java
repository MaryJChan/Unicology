package com.unicology.action.mypage;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.unicology.action.Action;
import com.unicology.action.ActionForward;
import com.unicology.dao.mypage.MemberUpdateDAO;
import com.unicology.dao.mypage.ResumeManagementDAO;
import com.unicology.dto.jasowrite.JasoWriteDTO;
import com.unicology.dto.member.MemberDTO;
import com.unicology.dto.resume.ResumeDTO;

public class ResumeManagementAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("=======================ResumeManagementAction============================");
		
		String url = "mypage/resume_management.jsp";
		
		// 자기소개서 리스트  
		ResumeManagementDAO rmDao = ResumeManagementDAO.getInstance();
		List<JasoWriteDTO> coverletter = rmDao.coverletterSelect();
		
		request.setAttribute("coverletter", coverletter);
		
		
		
		// 현재 로그인 한 계정 가져오기 
		HttpSession session = request.getSession();
		
		MemberDTO mDto = (MemberDTO)session.getAttribute("loginUser");
		String writer = mDto.getMid();
		System.out.println("ResumeManagementAction_writer : " + writer);
				
		if(writer != null) {
			MemberUpdateDAO muDao = MemberUpdateDAO.getInstance();
			List<MemberDTO> memUpdateList = muDao.memUpdateSelect(writer);
			
			request.setAttribute("memUpdateList", memUpdateList);
			
		}
		
		// 이력서 리스트 
		List<ResumeDTO> resumeList = rmDao.resumeList(writer);  
		request.setAttribute("resumeList", resumeList);
		
		ActionForward forward = new ActionForward();
        forward.setPath(url);
        forward.setRedirect(false);
		
		return forward;
	}

}
