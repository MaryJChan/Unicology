package com.unicology.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.unicology.action.Action;
import com.unicology.action.ActionForward;
import com.unicology.action.empinfo.EmpInfoAction;
import com.unicology.action.empinfo.EmpinfoScrapAction;
import com.unicology.action.empinfo.EmpinfoSearchAction;
import com.unicology.action.jasoanalysis.JasoAnalysisAction;
import com.unicology.action.jasowrite.JasoDeleteAction;
import com.unicology.action.jasowrite.JasoModifyAction;
import com.unicology.action.jasowrite.JasoModifyUpdateAction;
import com.unicology.action.jasowrite.JasoWriteAction;
import com.unicology.action.jasowrite.JasoWriteRegisterAction;
import com.unicology.action.member.ConstractAction;
import com.unicology.action.member.JoinMemberAction;
import com.unicology.action.member.LoginCkAction;
import com.unicology.action.member.LogoutAction;
import com.unicology.action.member.MemAjaxAction;
import com.unicology.action.member.MemberDeleteAction;
import com.unicology.action.member.MemberInsertAction;
import com.unicology.action.member.MemberUpdateAction;
import com.unicology.action.member.SessionAction;
import com.unicology.action.mypage.MemberUpdateViewAction;
import com.unicology.action.mypage.MyPageAction;
import com.unicology.action.mypage.MyPageMainAction;
import com.unicology.action.mypage.ResumeManagementAction;
import com.unicology.action.mypage.ScrapAction;
import com.unicology.action.passjaso.PassJasoAction;
import com.unicology.action.passjaso.PassJasoOptionAction;
import com.unicology.action.resume.ResumeAction;
import com.unicology.action.resume.ResumeInsertAction;
import com.unicology.action.resume.ResumeModifyAction;
import com.unicology.action.resume.ResumeViewAction;
import com.unicology.action.unicolmain.IndexAction;
import com.unicology.action.univ.UnivAjaxAction;

@WebServlet("/UnicolFrontController")
public class UnicolFrontController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	/**
     * @see HttpServlet#HttpServlet()
     */
    public UnicolFrontController() {
        super();
    }
	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
    
    // doGet, doPost 모두 service()를 통해서 작동
 	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 		//한글깨짐 방지
 		request.setCharacterEncoding("UTF-8");

 		//인터페이스
 		Action action = null;

 		// 페이지 이동방법 결정(Foward, sendRedirect)
 		ActionForward forward = null;

 		String uri = request.getRequestURI();
 		String ctx = request.getContextPath();
 		String command = uri.substring(ctx.length()); //uri 에서 ctx를 빼면 내가 원하는 소스만 출력 가능

 		System.out.println("uri ===> " + uri);
 		System.out.println("ctx ===> " + ctx);
 		System.out.println("command ===> " + command);

 		// ======= 액션 매핑 ======= //
 		if(command.equals("/ 이곳 밑에 페이지 주석후 달수있도록 합니다.")) {
 			System.out.println("OKAY?");
 		}
 		// ======================= 메인 페이지 =========================== //
 		else if (command.equals("/index.unicol")) {
 			System.out.println("서블릿탔음");
 			action = new IndexAction();	
			forward = action.excute(request, response);
 		}
 		// ======================= 자소서 작성 페이지 ======================= //
 		else if (command.equals("/jasowrite.unicol")) {
 			action = new JasoWriteAction();	
			forward = action.excute(request, response);
 		}
 		
 		else if (command.equals("/jasowriteregister.unicol")) {
 			action = new JasoWriteRegisterAction();	
			forward = action.excute(request, response);
 		}
 		
 	    // ======================= 자소서 수정 페이지 ======================= //
 		else if (command.equals("/jasoModify.unicol")) {
 			action = new JasoModifyAction();	
			forward = action.excute(request, response);
 		} else if (command.equals("/jasowriteupdate.unicol")) {
 			action = new JasoModifyUpdateAction();	
			forward = action.excute(request, response);
 		}
 		
 		// ======================= 자소서 삭제 페이지 ======================= //
 		else if (command.equals("/jasodelete.unicol")) {
 			action = new JasoDeleteAction();	
			forward = action.excute(request, response);
 		} 		
 		
 		// ======================= 합격 자소서 페이지 ======================= //
 		else if (command.equals("/passjaso.unicol")) {
 			action = new PassJasoAction();	
			forward = action.excute(request, response);
 		} else if (command.equals("/passjasooption.unicol")) {
 			action = new PassJasoOptionAction();	
			forward = action.excute(request, response);
 		}
 		
 		 // 2018.05.08 박아영 추가
        // ======================= 채용공고 페이지 ======================= //
        else if (command.equals("/joblist.unicol")) {
            action = new EmpInfoAction();   
           forward = action.excute(request, response);
        }
 	    // ====================== 채용공고 검색 페이지 ====================== //
        else if (command.equals("/empinfoSearch.unicol")) {
        	action = new EmpinfoSearchAction();
        	forward = action.excute(request, response);
        }
 		
 		// ====================== 채용공고 스크랩 저장 ====================== //
        else if (command.equals("/empinfoScrap.unicol")) {
        	action = new EmpinfoScrapAction();
        	forward = action.excute(request, response);
        }
 		
 		// 김성민 추가
 		// ====================== 세션값 저장(아이디 비밀번호) =============== //
        else if (command.equals("/sessionaction.unicol")) {
        	action = new SessionAction();   
        	forward = action.excute(request, response);
        }
 		// ====================== 로그인 확인 ========================== //
        else if (command.equals("/loginck.unicol")) {
			action = new LoginCkAction();
			forward = action.excute(request, response);
		}
 		// ====================== 로그아웃============================ //
        else if (command.equals("/logout.unicol")) {
        	action = new LogoutAction();
        	forward = action.excute(request, response);
        }
 		// ====================== 회원가입 동의 창============================ //
        else if (command.equals("/constract.unicol")) {
        	System.out.println("서블릿탔음");
        	action = new ConstractAction();
        	forward = action.excute(request, response);
        }
 		// ====================== 회원가입 동의 창============================ //
        else if (command.equals("/joinmember.unicol")) {
        	action = new JoinMemberAction();
        	forward = action.excute(request, response);
        }
 		// ====================== 아이디 중복 Ajax 확인 창============================ //
        else if (command.equals("/memajax.unicol")) {
        	action = new MemAjaxAction();
        	forward = action.excute(request, response);
        }
 		// ====================== 회원가입 입력 창============================ //
        else if (command.equals("/memberInsert.unicol")) {
        	action = new MemberInsertAction();
        	forward = action.excute(request, response);
        }
 		// ====================== 고등/대학교 검색 창============================ //
        else if (command.equals("/univajax.unicol")) {
        	action = new UnivAjaxAction();
        	forward = action.excute(request, response);
        }
 		// ====================== 회원 탈퇴  ========================== //
        else if (command.equals("/memberDelete.unicol")) {
        	action = new MemberDeleteAction();
        	forward = action.excute(request, response);
        }
 		
 		// 손다슬 추가
 		//  ============================ 이력서 작성 페이지================================= //
        else if (command.equals("/resumeInsert.unicol")) {
        	action = new ResumeInsertAction();
        	forward = action.excute(request, response);
        }
        else if (command.equals("/resume.unicol")) {
            action = new ResumeAction();
            forward = action.excute(request, response);
        }
        else if (command.equals("/resumeModify.unicol")) {
            action = new ResumeModifyAction();
            forward = action.excute(request, response);
        }
        else if (command.equals("/resumeView.unicol")) {
            action = new ResumeViewAction();
            forward = action.excute(request, response);
        }
 		//  ============================  MyPage  ================================= //
        else if (command.equals("/mypage.unicol")) {
        	action = new MyPageAction();
        	forward = action.excute(request, response);
        }
 		
        else if (command.equals("/mypageMain.unicol")) {
        	action = new MyPageMainAction();
        	forward = action.excute(request, response);
        }
 		
        else if (command.equals("/memberUpdateView.unicol")) {
        	action = new MemberUpdateViewAction();
        	forward = action.excute(request, response);
        }
 		
 		// ============================== MyPage에서 스크랩 보여주기 ============================ //  
        else if (command.equals("/scrap.unicol")) {
        	action = new ScrapAction();
        	forward = action.excute(request, response);
        }

 		
 	    //  ============================  MyPage 이력서관리  ================================= //
        else if (command.equals("/resume_management.unicol")) {
        	action = new ResumeManagementAction();
        	forward = action.excute(request, response);
        }
 		
        else if (command.equals("/jasoanalysis.unicol")) {
        	action = new JasoAnalysisAction();
        	forward = action.excute(request, response);
        }
 		
 	//  ============================  MyPage 회원정보 수정 ================================= //
        else if (command.equals("/memberUpdate.unicol")) {
        	action = new MemberUpdateAction();
        	forward = action.excute(request, response);
        }
 		
 		
 		
 		// 실제로 동작하는곳, 하나의 Servlet에서 URL을 읽어 해당 기능을 구현
 		if(forward != null) {
			if(forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher rd = request.getRequestDispatcher(forward.getPath());
				rd.forward(request, response);
			}
		}		
 	}
}
