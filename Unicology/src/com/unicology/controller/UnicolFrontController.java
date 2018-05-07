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
import com.unicology.action.passjaso.PassJaso;

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
 		// ======================= 자소서 작성 페이지 ======================= //
 		else if (command.equals("/jasowrite.unicol")) {
 			action = new PassJaso();	
			forward = action.excute(request, response);
 		}
 		// ======================= 합격 자소서 페이지 ======================= //
 		else if (command.equals("/passjaso.unicol")) {
 			action = new PassJaso();	
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


