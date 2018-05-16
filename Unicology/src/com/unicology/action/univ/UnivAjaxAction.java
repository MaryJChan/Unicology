package com.unicology.action.univ;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.unicology.action.Action;
import com.unicology.action.ActionForward;
import com.unicology.dao.member.UnivDAO;
import com.unicology.dto.member.UnivDTO;

public class UnivAjaxAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "member/schoolResult.jsp";
		List<UnivDTO> list = null;
		String schoolName = request.getParameter("schoolName");
		System.out.println("학교이름 : " + schoolName);
		
		if (schoolName != null) {
			if (schoolName.trim().equals("")==false) {
				UnivDAO uDao = UnivDAO.getInstance();
				list = uDao.UnivDAO_search(schoolName);
			}
		}
		
		
		request.setAttribute("list", list);
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);

		return forward;		
	}
}
