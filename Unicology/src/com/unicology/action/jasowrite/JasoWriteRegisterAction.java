package com.unicology.action.jasowrite;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.xalan.internal.xsltc.util.IntegerArray;
import com.unicology.action.Action;
import com.unicology.action.ActionForward;
import com.unicology.dao.jasowrite.JasoWriteDAO;
import com.unicology.dto.jasowrite.JasoWriteDTO;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

public class JasoWriteRegisterAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "resume_management.unicol";
		
		int flag = 1;
		
		int jaso_cnt = Integer.parseInt(request.getParameter("jaso_cnt"));
		String title = request.getParameter("jaso_title");
		String writer = request.getParameter("jaso_writer");
		
		JasoWriteDTO jwDto = null;
		JasoWriteDAO  jwDao = JasoWriteDAO.getInstance();
		int num = jwDao.jasoWriteSelectNum();
		
		for (int i = 1; i < jaso_cnt+1; i++) {
			int jindex = Integer.parseInt(request.getParameter("jaso_index" + i));
			String question = request.getParameter("jaso_question" + i);
			String answer = request.getParameter("jaso_answer" + i);
			if(question != null) {
				jwDto = new JasoWriteDTO(num ,title, jindex, question, answer, writer);
				jwDao.jasoWriteRegister(jwDto);
			}
		}
		
		request.setAttribute("flag", flag);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);		

		return forward;		
	}

}
