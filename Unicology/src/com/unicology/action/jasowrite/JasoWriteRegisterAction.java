package com.unicology.action.jasowrite;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.unicology.action.Action;
import com.unicology.action.ActionForward;
import com.unicology.dao.jasowrite.JasoWriteDAO;
import com.unicology.dto.jasowrite.JasoWriteDTO;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

public class JasoWriteRegisterAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "jasowrite/jasowrite.jsp";
		
		int jaso_cnt = Integer.parseInt(request.getParameter("jaso_cnt"));
		String title = request.getParameter("jaso_title");
		
		JasoWriteDTO jwDto = null;
		JasoWriteDAO  jwDao = JasoWriteDAO.getInstance();
		int num = jwDao.jasoWriteSelectNum();
		
		for (int i = 1; i < jaso_cnt+1; i++) {
			String question = request.getParameter("jaso_question" + i);
			String answer = request.getParameter("jaso_answer" + i);
			if(question != null) {
				jwDto = new JasoWriteDTO(num ,title, question, answer);
				jwDao.jasoWriteRegister(jwDto);
			}
		}
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);		

		return forward;		
	}

}
