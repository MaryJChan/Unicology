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
import com.unicology.action.jasowrite.JasoWriteAction;
import com.unicology.action.member.ConstractAction;
import com.unicology.action.member.JoinMemberAction;
import com.unicology.action.member.LoginCkAction;
import com.unicology.action.member.LogoutAction;
import com.unicology.action.member.MemAjaxAction;
import com.unicology.action.member.MemberInsertAction;
import com.unicology.action.member.SessionAction;
import com.unicology.action.passjaso.PassJasoAction;
import com.unicology.action.passjaso.PassJasoOptionAction;
import com.unicology.action.resume.ResumeInsertAction;
import com.unicology.action.unicolmain.IndexAction;

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
 		//  ============================ 이력서 작성 페이지================================= //
        else if (command.equals("/resumeInsert.unicol")) {
        	action = new ResumeInsertAction();
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


