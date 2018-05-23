package com.unicology.action.empinfo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.unicology.action.Action;
import com.unicology.action.ActionForward;
import com.unicology.dao.mypage.ScrapDAO;
import com.unicology.dto.member.MemberDTO;

public class EmpinfoScrapAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "";
		int scrapflag = 0;
		ScrapDAO sDao = ScrapDAO.getInstance();
		
		// 현재 로그인 계정 가져오기
		HttpSession session = request.getSession();
		
		MemberDTO mDto = (MemberDTO)session.getAttribute("loginUser");
		String writer = mDto.getMid();
		System.out.println("MyPageAction_writer : " + writer);
		
		// 스크랩 기능 구현
		String[] enochk = request.getParameterValues("scrapchk");
		
		if(enochk != null) {
			int scrapResult = sDao.scrapInsert(writer, enochk);
			
			if(scrapResult > 0) {
				System.out.println("스크랩 번호 DB 저장 성공");
				scrapflag = 1;
				
				JSONObject jObj = new JSONObject();
				jObj.put("scrapflag", scrapflag);
				
				response.setContentType("application/x-json; charset=UTF-8");
				response.getWriter().println(jObj);
				
			} else {
				System.out.println("스크랩 번호 DB 저장 실패");
				scrapflag = 0;
			}
		}
		
	 
		return null;
	}

}
