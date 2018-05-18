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
		
		int filesize = 0;
		  
        //form태그 안에 있는 input값의 Name 속성으로 가져옴.
        // request를 확장시킨 MultipartRequest생성
        // new MultipartRequest(request, 파일업로드 디렉토리, 업로드 용량, 인코딩, 파일이름중복정책)
		MultipartRequest multi = new MultipartRequest(request, Constants.UPLOAD_PATH, Constants.MAX_UPLOAD, "UTF-8", new DefaultFileRenamePolicy());
		
		String url = "index/index.jsp";
		
		// 이력서제목
				String resume_title = multi.getParameter("resume_title");
				// 이름
				String UserName = multi.getParameter("UserName");
				// 생년월일
				String UserBirth= multi.getParameter("UserBirth");
				// 성별
				String UserSex=multi.getParameter("UserSex");
				// 이메일
				String UserEmail = multi.getParameter("UserEmail");
				// 전화번호
				String UserTel = multi.getParameter("UserTel");
				// 핸드폰번호
				String UserPhone = multi.getParameter("UserPhone");
				// 주소
				String UserAdress = multi.getParameter("UserAdress");
				// 공백
				String filename = "";
		
		// 파일 업로드 처리
        File uploadDir = new File(Constants.UPLOAD_PATH);
        
        // 파일을 저장할 디렉토리가 존재하지 않다면 디렉토리 생성
        if(!uploadDir.exists()) {
             uploadDir.mkdir();
        }
        
        //String file = multi.getParameter("uploadfile");
        
        try {
             // 첨부파일의 집합(배열로 가져옴)
             Enumeration files = multi.getFileNames();
             
             while(files.hasMoreElements()) {
                  // 첨부파일의 이름
                  String file1 = (String) files.nextElement();
                  filename = multi.getFilesystemName(file1);
                  File fl = multi.getFile(file1);
                  
                  if(fl != null) {
                        filesize = (int)fl.length(); //파일 사이즈 저장
                  }
             }
        } catch (Exception e) {
             e.printStackTrace();
        }
        
        //filename이 null또는 "" 일 때 처리
        if(filename == null || filename.trim().equals("")) {
             filename = "-";
        }
        
		//=============================출력===================================//
		System.out.println("resume_title: " + resume_title);
		System.out.println("UserName: " +UserName );
		System.out.println("UserBirth: " + UserBirth);
		System.out.println("UserEmail: " + UserEmail );
		System.out.println("UserTel: " + UserTel);
		System.out.println("UserPhone: " + UserPhone);
		System.out.println("UserAdress: " + UserAdress);
		System.out.println("UserSex: " + UserSex);
		
		ResumeDTO rDto = new ResumeDTO(resume_title,UserName,UserBirth,UserSex,UserEmail,UserTel,UserPhone, UserAdress, filename, filesize);
		
		ResumeDAO rDao = ResumeDAO.getInstance();
		int result = rDao.resumeInsert(rDto);

		
	        
	      
			if(result>0) {
				System.out.println("게시글 등록 성공");
				url = "index/index.jsp";
				 
				ActionForward forward = new ActionForward();
				forward.setPath(url);
				forward.setRedirect(false);
			}else {
				System.out.println("게시글 등록 실패");
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
