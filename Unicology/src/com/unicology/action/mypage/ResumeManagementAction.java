package com.unicology.action.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.unicology.action.Action;
import com.unicology.action.ActionForward;
import com.unicology.dao.mypage.ResumeManagementDAO;

public class ResumeManagementAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("=======================ResumeManagementAction============================");
		
		String url = "mypage/resume_management.jsp";
		
		ResumeManagementDAO rmDao = ResumeManagementDAO.getInstance();
		rmDao.resumeListSelect();
		
		ActionForward forward = new ActionForward();
        forward.setPath(url);
        forward.setRedirect(false);
		
		return forward;
	}

}
