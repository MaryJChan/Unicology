package com.unicology.action.mypage;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.unicology.action.Action;
import com.unicology.action.ActionForward;
import com.unicology.dao.member.MemberDAO;
import com.unicology.dto.member.MemberDTO;

public class DeleteCkAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String mname = request.getParameter("name");
		String mpw = request.getParameter("pw");
		System.out.println(mname+","+mpw);
		
		if (mname != null && mpw != null) {
			if(mname.trim().equals("")== false && mpw.trim().equals("")== false) {
				MemberDAO mDao = MemberDAO.getInstance();
				MemberDTO mDto = new MemberDTO(mname, mpw);
				int flag;
				mDto = mDao.sessionDelete(mDto);
				if (mDto != null) {
					System.out.println("조회 성공했습니다.");
					flag = 1;
				}else {
					System.out.println("조회 실패했습니다.");
					flag = 0;
				}
				System.out.println("flag :"+flag);
				JSONObject jObj = new JSONObject();
				jObj.put("flag", flag);
				jObj.put("name", mname);
				jObj.put("pw", mpw);

				response.setContentType("application/x-json; charset=UTF-8");
				response.getWriter().println(jObj);
			
				
				
			}
		}
		
		
		return null;
	}
}
