package com.unicology.action.mypage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.unicology.action.Action;
import com.unicology.action.ActionForward;
import com.unicology.dao.empinfo.EmpInfoDAO;
import com.unicology.dao.mypage.ResumeManagementDAO;
import com.unicology.dao.mypage.ScrapDAO;
import com.unicology.dto.empinfo.EmpInfoDTO;
import com.unicology.dto.member.MemberDTO;
import com.unicology.dto.mypage.ScrapDTO;

public class MyPageMainAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "mypage/mypage.jsp";
		
		ScrapDAO sDao = ScrapDAO.getInstance();
		EmpInfoDAO eDao = EmpInfoDAO.getInstance();
		
		// 현재 로그인 한 계정 가져오기 
		HttpSession session = request.getSession();
		
		ResumeManagementDAO rmDao = ResumeManagementDAO.getInstance();
		MemberDTO mDto = (MemberDTO)session.getAttribute("loginUser");
		String writer = mDto.getMid();
		System.out.println("MyPageMainAction_writer : " + writer);
				
		if(writer != null) {
			
			List<ScrapDTO> scrapEno = sDao.selectScrapEno(writer);
			List<EmpInfoDTO> empinfoListEno = new ArrayList<>(); 
			
			for (ScrapDTO scrapDTO : scrapEno) {
				int eno = scrapDTO.getScrap_eno();
				
				empinfoListEno = eDao.scrapSelect(eno);
				request.setAttribute("empinfoListEno", empinfoListEno);
				
				System.out.println("empinfoListEno size : " + empinfoListEno.size());
				for (EmpInfoDTO empInfoDTO : empinfoListEno) {
					System.out.println(empInfoDTO.getCompanyName());
					System.out.println(empInfoDTO.getTitle());
					System.out.println(empInfoDTO.getCareer());
					System.out.println(empInfoDTO.getEducation());
					System.out.println(empInfoDTO.getWork_place());
					System.out.println(empInfoDTO.getEmploymentType());
					System.out.println(empInfoDTO.getDeadlines());
				}
				
				
				
				
			}
			
		}
				

		ActionForward forward = new ActionForward();
        forward.setPath(url);
        forward.setRedirect(false);
		
		return forward;
	}

}
