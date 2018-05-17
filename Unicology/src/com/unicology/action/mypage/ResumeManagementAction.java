package com.unicology.action.mypage;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.unicology.action.Action;
import com.unicology.action.ActionForward;
import com.unicology.dao.mypage.ResumeManagementDAO;
import com.unicology.dto.jasowrite.JasoWriteDTO;

public class ResumeManagementAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("=======================ResumeManagementAction============================");
		
		String url = "mypage/resume_management.jsp";
		
		ResumeManagementDAO rmDao = ResumeManagementDAO.getInstance();
		List<JasoWriteDTO> resumeList = rmDao.resumeListSelect();
		
		request.setAttribute("resumeList", resumeList);
		
		ActionForward forward = new ActionForward();
        forward.setPath(url);
        forward.setRedirect(false);
		
		return forward;
	}

}
