package com.unicology.action.resume;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.unicology.action.Action;
import com.unicology.action.ActionForward;
import com.unicology.dto.member.MemberDTO;

public class ResumeAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("=============== resumeAction ==============");
			
		String url = "resume/resume.jsp";
		
		
		
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
