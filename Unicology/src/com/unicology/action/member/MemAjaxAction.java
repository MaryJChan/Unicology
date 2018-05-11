package com.unicology.action.member;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.unicology.action.Action;
import com.unicology.action.ActionForward;
import com.unicology.dao.member.MemberDAO;
import com.unicology.dto.member.MemberDTO;

public class MemAjaxAction implements Action{
	
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String url = "";
		
		String mid = request.getParameter("id");
		System.out.println("아이디 : " + mid);
		
		if (mid != null) {
			if (mid.trim().equals("")==false) {
				MemberDAO mDao = MemberDAO.getInstance();
				List<MemberDTO> list = mDao.memIdCheck(mid);
				int flag;
				if (list.size() != 0) {
					// 아이디가 중복인 경우
					flag = 1;
				}else {
					// 아이디가 중복이 없는 경우
					flag = 0;
				}
				System.out.println("flag(1이중복,0이 미중복) = "+ flag);
				
				JSONObject jObj = new JSONObject();
				jObj.put("flag", flag);
				jObj.put("id", mid);
				
				response.setContentType("aaplication/x-json; charset=UTF-8");
				response.getWriter().println(jObj);
			}
		}
		
		return null;
	}
}
