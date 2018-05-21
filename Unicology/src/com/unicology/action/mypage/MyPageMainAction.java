package com.unicology.action.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.unicology.action.Action;
import com.unicology.action.ActionForward;

public class MyPageMainAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "mypage/mypage.jsp";
		
		ActionForward forward = new ActionForward();
        forward.setPath(url);
        forward.setRedirect(false);
		
		return forward;
	}

}
