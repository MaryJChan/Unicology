package com.unicology.action.resume;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.unicology.action.Action;
import com.unicology.action.ActionForward;

public class ResumeViewAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 String url = "resume/resumeView.jsp";
		
		 
         ActionForward forward = new ActionForward();
         forward.setPath(url);
         forward.setRedirect(false);
         return forward;
	}

}
