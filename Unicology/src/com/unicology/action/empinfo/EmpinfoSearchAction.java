package com.unicology.action.empinfo;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.unicology.action.Action;
import com.unicology.action.ActionForward;
import com.unicology.dao.empinfo.EmpInfoDAO;
import com.unicology.dto.empinfo.EmpInfoCriteriaDTO;
import com.unicology.dto.empinfo.EmpInfoDTO;
import com.unicology.dto.empinfo.EmpInfoPageMakerDTO;

public class EmpinfoSearchAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("================EmpinfoSearchAction=====================");
		
		String url = "empinfo/empinfoList.jsp";
		
		// 객체 생성과 동시에 page = 1, perPageNum = 10이됨
        EmpInfoCriteriaDTO empInfoCriDto = new EmpInfoCriteriaDTO();
        EmpInfoDAO empInfoDao = EmpInfoDAO.getInstance();
        int pageflag = 1;
        
        // action에서 사용하는 page변수
        int page = 1;
        
        // 1페이지가 아닌경우
        if (request.getParameter("page") != null) {
              page = Integer.parseInt(request.getParameter("page"));
        }
        System.out.println("페이지 번호 : " + page);
        // EmpInfoCriteriaDTO에 page를 1로 변경
        empInfoCriDto.setPage(page);
        
        //검색 키워드(카테고리, 세분류)
        String[] checkboxResult = request.getParameterValues("checkboxResult");
        empInfoCriDto.setCategory_check_keyword(checkboxResult);
        String[] checkboxParentResult = request.getParameterValues("checkboxParentResult");
        empInfoCriDto.setCategory_keyword(checkboxParentResult);
/*        
        for (String chkBoxResult : checkboxResult) {
        	System.out.println(chkBoxResult);
		}
        for (String chkParentresult : checkboxParentResult) {
        	System.out.println(chkParentresult);
		}*/
        
        if(checkboxResult != null || checkboxParentResult != null) {
        	empInfoDao.empinfoSearchSelect(empInfoCriDto);
        }
        
       
        // 검색 키워드(Tab)
		String searchKey = request.getParameter("flag");
		System.out.println("searchKey : " + searchKey);
		empInfoCriDto.setKeyword(searchKey);
		
		if(searchKey != null || checkboxResult != null) {
			List<EmpInfoDTO> searchList = empInfoDao.empinfoSearchSelect(empInfoCriDto);
        	int searchCnt = searchList.size();
        	System.out.println("선택한 키워드 : " + searchKey + ", 총 건수 : " + searchCnt);
        	int keyCode;
        	if(searchKey.equals("전체")) {
        		keyCode = 1;
        		System.out.println("전체 keyCode" + keyCode);
        		request.setAttribute("keyCode", keyCode);
        	} else if(searchKey.equals("정규직")) {
        		keyCode = 2;
        		request.setAttribute("keyCode", keyCode);
        	} else if(searchKey.equals("계약직")) {
        		keyCode = 3;
        		request.setAttribute("keyCode", keyCode);
        	} else if(searchKey.equals("인턴직")) {
        		keyCode = 4;
        		request.setAttribute("keyCode", keyCode);
        	} else if(searchKey.equals("교육생")) {
        		keyCode = 5;
        		request.setAttribute("keyCode", keyCode);
        	} else {
        		System.out.println("=========잘못된 코드입니다.===========");
        	}
        	request.setAttribute("searchList", searchList);
        	
        } else {
        	List<EmpInfoDTO> list = empInfoDao.jobListAll(empInfoCriDto);
        	// list를 view딴으로 보냄
            request.setAttribute("searchList", list);
        	
        }
		
		request.setAttribute("searchKey", searchKey);
		request.setAttribute("pageflag", pageflag);

		
		// 페이지 메이커 설정
        // 페이지 메이커 객체 생성
        EmpInfoPageMakerDTO empInfoPageMaker = new EmpInfoPageMakerDTO();
        
        // 페이지 메이커DTO에 criDto를 매게변수로 보냄 [criDto값을 모두사용]
        empInfoPageMaker.setEmpInfoCriDto(empInfoCriDto);
        // 전체 개수를 구함 (아직 구현 X)
        int totalcount = empInfoDao.totalCount(searchKey);
        // 페이지 메이커DTO의 setTotalCount메서드에 totalcount를 매게변수로 보냄(아직 구현 X)
        empInfoPageMaker.setTotalCount(totalcount);
        System.out.println("next_boolean" + empInfoPageMaker.isNext());
        request.setAttribute("EmpInfoPageMaker", empInfoPageMaker);
        
        request.setAttribute("totalcount", totalcount);
        ActionForward forward = new ActionForward();
        forward.setPath(url);
        forward.setRedirect(false);
        return forward;
		
	}

}
