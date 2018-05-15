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
public class EmpInfoAction implements Action {
      @Override
      public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
                  throws ServletException, IOException {
            
            System.out.println("===========================EmpInfoAction==================================");
            
            String url = "empinfo/empinfoList.jsp";
            
            // 객체 생성과 동시에 page = 1, perPageNum = 10이됨
            EmpInfoCriteriaDTO empInfoCriDto = new EmpInfoCriteriaDTO();
            int flag = 0;
            
            // action에서 사용하는 page변수
            int page = 1;
            
            // 근무조건에 따른 검색 변수
            String searchKey = request.getParameter("flag");
    		System.out.println("flagKey : " + searchKey);
    		empInfoCriDto.setKeyword(searchKey);
            
            // 1페이지가 아닌경우
            if (request.getParameter("page") != null) {
                  page = Integer.parseInt(request.getParameter("page"));
            }
            System.out.println("페이지 번호 : " + page);
            // EmpInfoCriteriaDTO에 page를 1로 변경
            empInfoCriDto.setPage(page);
            // empInfoDao객체 생성
            EmpInfoDAO empInfoDao = EmpInfoDAO.getInstance();
            // bDao에 listAll메서드에 criDto를 매게변수로 주고 Mapper를 통해 조건에 맞는 행을 담아 list변수에 저장
            
            if(searchKey == null) {
            	List<EmpInfoDTO> list = empInfoDao.jobListAll(empInfoCriDto);
            	// list를 view딴으로 보냄
                request.setAttribute("searchList", list);
            } else {
            	List<EmpInfoDTO> searchList = empInfoDao.empinfoSearchSelect(empInfoCriDto);
            	request.setAttribute("searchList", searchList);
            }
            
           
            // 페이지 메이커 설정
            // 페이지 메이커 객체 생성
            EmpInfoPageMakerDTO empInfoPageMaker = new EmpInfoPageMakerDTO();
            
            // 페이지 메이커DTO에 criDto를 매게변수로 보냄 [criDto값을 모두사용]
            empInfoPageMaker.setEmpInfoCriDto(empInfoCriDto);
            // 전체 개수를 구함 (아직 구현 X)
            int totalcount = empInfoDao.totalCount(searchKey);
            // 페이지 메이커DTO의 setTotalCount메서드에 totalcount를 매게변수로 보냄(아직 구현 X)
            System.out.println("EmpInfoActionTotalCount : " + totalcount);
            empInfoPageMaker.setTotalCount(totalcount);
            request.setAttribute("EmpInfoPageMaker", empInfoPageMaker);
            
            ActionForward forward = new ActionForward();
            forward.setPath(url);
            forward.setRedirect(false);
            return forward;
      }
}
