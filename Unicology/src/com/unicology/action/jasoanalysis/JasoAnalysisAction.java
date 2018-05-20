package com.unicology.action.jasoanalysis;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.unicology.action.Action;
import com.unicology.action.ActionForward;
import com.unicology.dao.empinfo.EmpInfoDAO;
import com.unicology.dto.empinfo.EmpInfoDTO;

public class JasoAnalysisAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("=======================JasoAnalysisAction============================");
		String url = "jasoanalysis/jasoanalysisUnicol.jsp";
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);		
		
		EmpInfoDAO empDao = EmpInfoDAO.getInstance();
		List<EmpInfoDTO> dutyList = empDao.dutySelect();
		
		request.setAttribute("dutyList", dutyList);

		return forward;		
		
	}

}

