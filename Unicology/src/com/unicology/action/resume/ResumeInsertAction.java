package com.unicology.action.resume;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.unicology.action.Action;
import com.unicology.action.ActionForward;
import com.unicology.common.Constants;
import com.unicology.dao.resume.ResumeDAO;
import com.unicology.dto.resume.ResumeDTO;

public class ResumeInsertAction implements  Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("========== ResumeInsertAction ==========");
		
		MultipartRequest multi = new MultipartRequest(request, Constants.UPLOAD_PATH, Constants.MAX_UPLOAD, "UTF-8", new DefaultFileRenamePolicy());
		
		String url = "index/index.jsp";
		
		// 이력서제목
		String resume_title = multi.getParameter("resume_title2");
		// 이름
		String UserName = multi.getParameter("UserName");
		// 생년월일
		String  UserBirth= multi.getParameter("UserBirth");
		// 이메일
		String UserEmail = multi.getParameter("UserEmail");
		// 전화번호
		String UserTel = multi.getParameter("UserTel");
		// 핸드폰번호
		String UserPhone = multi.getParameter("UserPhone");
		// 주소
		String UserAdress = multi.getParameter("UserAdress");
		
		//=============================출력===================================//
		System.out.println("resume_title: " + resume_title);
		System.out.println("UserName: " +UserName );
		System.out.println("UserBirth: " + UserBirth);
		System.out.println("UserEmail: " + UserEmail );
		System.out.println("UserTel: " + UserTel);
		System.out.println("UserPhone: " + UserPhone);
		System.out.println("UserAdress: " + UserAdress);
		
		
		ResumeDTO rDto = new ResumeDTO(resume_title,UserName,UserBirth,UserEmail,UserTel,UserPhone, UserAdress);
		
		ResumeDAO rDao = ResumeDAO.getInstance();
		int result = rDao.resumeInsert(rDto);
		
		if(result>0) {
			url = "index/index.jsp";
			 
			ActionForward forward = new ActionForward();
			forward.setPath(url);
			forward.setRedirect(false);
		}else {
			url = "resume/resume.jsp";
			
			ActionForward forward = new ActionForward();
			forward.setPath(url);
			forward.setRedirect(false);
		}
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
