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
		System.out.println("위치0");
        
        //form태그 안에 있는 input값의 Name 속성으로 가져옴.
        // request를 확장시킨 MultipartRequest생성
        // new MultipartRequest(request, 파일업로드 디렉토리, 업로드 용량, 인코딩, 파일이름중복정책)
		MultipartRequest multi = new MultipartRequest(request, Constants.UPLOAD_PATH, Constants.MAX_UPLOAD, "UTF-8", new DefaultFileRenamePolicy());
		String url = "index/index.jsp";
		
		int filesize = 0;
		System.out.println("위치1");
		
		// 공백
		String filename = "";
		
		// 파일 업로드 처리
        File uploadDir = new File(Constants.UPLOAD_PATH);
        
        // 파일을 저장할 디렉토리가 존재하지 않다면 디렉토리 생성
        if(!uploadDir.exists()) {
             uploadDir.mkdir();
        }
		
		System.out.println("위치2");
		
		
		// 이력서제목
		String resume_title = multi.getParameter("resume_title");
//		===============================================================(인적사항)======================================================
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
//		===============================================================(학력)======================================================
		// 대학교/고졸
		String SchoolGrade = multi.getParameter("SchoolGrade");
		// 학교이름
		String SchoolName = multi.getParameter("SchoolName");
		// 입학년도
		String entranceYear = multi.getParameter("entranceYear");
		// 졸업년도
		String graduationYear = multi.getParameter("graduationYear");
		// 졸업상태
		String GraduationStatus = multi.getParameter("GraduationStatus");
		// 전공
		String major = multi.getParameter("major");
		// 학년
		String majorGrade = multi.getParameter("majorGrade");
		// 학점
		String MajorTotalgrade = multi.getParameter("MajorTotalgrade");
//		===============================================================(경력)======================================================
		// 회사명
		String company = multi.getParameter("company");
		// 부서명
		String division = multi.getParameter("division");
		// 입사년월
		String joincom = multi.getParameter("joincom");
		// 퇴사년월
		String resigncom = multi.getParameter("resigncom");
		// 직급
		String position = multi.getParameter("position");
		// 직무
		String duty = multi.getParameter("duty");
		// 연봉
		String sal = multi.getParameter("sal");
		// 담당업무
		String businesswork = multi.getParameter("businesswork");
//		======================================================(인턴/대외활동)==================================================
		// 활동구분
		String InternActivity = multi.getParameter("InternActivity");
		// 회사/기관/단체명
		String interncompany = multi.getParameter("interncompany");
		// 시작년월
		String startintern = multi.getParameter("startintern");
		// 종료년월
		String endintern = multi.getParameter("endintern");
		// 활동내용
		String interncontent = multi.getParameter("interncontent");
//		=========================================================(교육)======================================================
		// 교육명
		String learningname = multi.getParameter("learningname");
		// 교육기관
		String learningorgan = multi.getParameter("learningorgan");
		// 시작년월
		String startlearning = multi.getParameter("startlearning");
		// 종료년월
		String endlearning = multi.getParameter("endlearning");
		// 교육내용
		String learningcontent = multi.getParameter("learningcontent");
//		========================================================(자격증)======================================================
		// 자격증명
		String licensename = multi.getParameter("licensename");
		// 발행처
		String licensepublish = multi.getParameter("licensepublish");
		// 취득년월
		String startlicense = multi.getParameter("startlicense");
//		=========================================================(수상)======================================================
		// 수상명
		String award_title = multi.getParameter("award_title");
		// 수여기관
		String award_inst = multi.getParameter("award_inst");
		// 연도
		String award_year = multi.getParameter("award_year");
		// 수여내용
		String award_content = multi.getParameter("award_content");
//		========================================================(해외경험)======================================================
		// 국가명
		String country_name = multi.getParameter("country_name");
		// 시작녀월
		String country_start = multi.getParameter("country_start");
		// 종료년월
		String country_end = multi.getParameter("country_end");
		// 내용
		String abroad_content = multi.getParameter("abroad_content");
//		=======================================================(어학)======================================================
		// 구분
		String kind = multi.getParameter("kind");
		// 외국어명
		String language_kind = multi.getParameter("language_kind");
		// 회화능력
		String language_level = multi.getParameter("language_level");
//		========================================================(포트폴리오)======================================================
		String url_addr = multi.getParameter("url_addr");
//		========================================================(취업우대)======================================================
		// 보훈대상
		String bohun = multi.getParameter("bohun");
		// 취업보호대상
		String job_protection = multi.getParameter("job_protection");
		// 고용지원금 대상
		String subsidy = multi.getParameter("subsidy");
		// 장애여부
		String obstacle = multi.getParameter("obstacle");
		// 병역
		String MilitaryService = multi.getParameter("MilitaryService");
		
		
        String file = multi.getParameter("uploadfile");
        
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
//		======================================================================(인적사항)
		System.out.println("1.resume_title: " + resume_title);
		System.out.println("2.UserName: " +UserName );
		System.out.println("3.UserBirth: " + UserBirth);
		System.out.println("4.UserSex: " + UserSex);
		System.out.println("5.UserEmail: " + UserEmail );
		System.out.println("6.UserTel: " + UserTel);
		System.out.println("7.UserPhone: " + UserPhone);
		System.out.println("8.UserAdress: " + UserAdress);
//		======================================================================(학력)
        System.out.println("9.SchoolGrade: " + SchoolGrade);
		System.out.println("10.SchoolName: " + SchoolName);
		System.out.println("11.entranceYear: " + entranceYear);
		System.out.println("12.graduationYear: " + graduationYear);
		System.out.println("13.GraduationStatus: " + GraduationStatus);
		System.out.println("14.major: " + major);
		System.out.println("15.majorGrade: " + majorGrade);
		System.out.println("16.MajorTotalgrade: " + MajorTotalgrade);
//		======================================================================(경력)
		System.out.println("17.company: " + company);
		System.out.println("18.division: " + division);
		System.out.println("19.joincom: " + joincom);
		System.out.println("20.resigncom: " + resigncom);
		System.out.println("21.position: " + position);
		System.out.println("22.duty: " + duty);
		System.out.println("23.sal: " + sal);
		System.out.println("24.businesswork: " + businesswork);
//		======================================================================(인턴/대외활동)
		System.out.println("25.InternActivity:" +InternActivity);
		System.out.println("26.interncompany:" +interncompany);
		System.out.println("27.startintern:" +startintern);
		System.out.println("28.endintern:" +endintern);
		System.out.println("29.interncontent:" +interncontent);
//		======================================================================(교육)
		System.out.println("30.learningname:"+learningname);
		System.out.println("31.learningorgan:"+learningorgan);
		System.out.println("32.startlearning:"+startlearning);
		System.out.println("33.endlearning:"+endlearning);
		System.out.println("34.learningcontent:"+learningcontent);
//		======================================================================(자격증)
		System.out.println("35.licensename:" +licensename);
		System.out.println("35.licensepublish:" +licensepublish);
		System.out.println("35.startlicense:" +startlicense);
//		======================================================================(수상)
		System.out.println("38.award_title:"+award_title);
		System.out.println("38.award_inst:"+award_inst);
		System.out.println("38.award_year:"+award_year);
		System.out.println("38.award_content:"+award_content);
//		======================================================================(해외경험)
		System.out.println("42.country_name:"+country_name);
		System.out.println("43.country_start:"+country_start);
		System.out.println("44.country_end:"+country_end);
		System.out.println("45.abroad_content:"+abroad_content);
//		======================================================================(어학)
		System.out.println("46.kind:"+kind);
		System.out.println("47.language_kind:"+language_kind);
		System.out.println("48.language_level:"+language_level);
//		======================================================================(포트폴리오)
		System.out.println("49.url_addr: "+ url_addr);
		System.out.println("50.filename:"+ filename);
		System.out.println("51.filesize:"+filesize);
//		======================================================================(취업우대)
		System.out.println("52.bohun:"+bohun);
		System.out.println("53.job_protection:"+job_protection);
		System.out.println("54.subsidy:"+subsidy);
		System.out.println("55.obstacle:"+obstacle);
		System.out.println("56.MilitaryService:"+MilitaryService);
		System.out.println();
        
        
        
		ResumeDTO rDto = new ResumeDTO(resume_title, UserName,UserBirth, UserSex, UserEmail,
				UserTel, UserPhone, UserAdress, SchoolGrade, SchoolName,
				entranceYear, graduationYear, GraduationStatus, major, majorGrade,
				MajorTotalgrade, company, division, joincom, resigncom,position,
				duty, sal,businesswork,InternActivity, interncompany,
				startintern, endintern, interncontent, learningname, learningorgan,
				 startlearning, endlearning, learningcontent, licensename, licensepublish,
				startlicense, award_title, award_inst,  award_year, award_content,
				 country_name, country_start, country_end, abroad_content, kind,
				language_kind, language_level, url_addr, filename, filesize,
				bohun, job_protection, subsidy, obstacle, MilitaryService);
		
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
