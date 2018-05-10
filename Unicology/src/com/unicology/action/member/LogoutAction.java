package com.unicology.action.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.unicology.action.Action;
import com.unicology.action.ActionForward;

public class LogoutAction implements Action{
	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "index.unicol";
		int flag = 0;
		// true면 새로운 세션 생성
		// false면 null값 호출
		HttpSession session = request.getSession(false);

		if (session != null) {
			session.invalidate();
			flag = 1;
		}
		
		JSONObject jObj = new JSONObject();
		jObj.put("flag", flag);

		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().println(jObj);
		
		
		return null;
	}
}
