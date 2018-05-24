package com.unicology.action.jasowrite;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.unicology.action.Action;
import com.unicology.action.ActionForward;
import com.unicology.dao.jasowrite.JasoWriteDAO;

public class JasoDeleteAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int flag = 0;
		int num = Integer.parseInt(request.getParameter("num"));
		
		JasoWriteDAO jDao = JasoWriteDAO.getInstance();
		int result = jDao.jasoWriteDelete(num);
		
		if(result > 0) {
			flag = 1;
		}
				
		JSONObject jObj = new JSONObject();
		jObj.put("flag", flag);		
		response.setContentType("application/x-json; charset=UTF-8"); 
		response.getWriter().println(jObj);
		
		return null;	
	}

}
