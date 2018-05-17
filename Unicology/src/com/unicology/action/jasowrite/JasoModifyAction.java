package com.unicology.action.jasowrite;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.unicology.action.Action;
import com.unicology.action.ActionForward;

public class JasoModifyAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("========================JasoModifyAction=====================");
		
		String url = "jasowrite/jasomodify.jsp";
		
		int rnum = Integer.parseInt(request.getParameter("rnum"));
		System.out.println("수정할 rnum : " + rnum);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);		

		return forward;		
	}

}
