<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Header</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Archivo+Black|Roboto+Slab');
@import url(http://api.mobilis.co.kr/webfonts/css/?fontface=NanumGothicWeb);
      body{
            margin:0;
            padding:0;
            font-family: 'NanumGothic', '나눔고딕','NanumGothicWeb', '맑은 고딕', 'Malgun Gothic', Dotum;
      }
      #Header_box{
            height: 160px;
            position: relative;
      }
      #Header_top_wrap{
            display: inline-block;
            position: absolute;
            right: 80px;
            top:10px;
      }
      .Header_inner{
            display: inline-block;
            color:#999999;
            text-decoration: none;
            font-weight: 700;
      }
      #Header_bar{
            font-size: 3px;
            border: 0.5px solid #666666;
            height:23px;
            line-height: 23px;
            margin: 0 10px 0 5px;
      }
      #Header_contact{
            margin:5px;
            position: relative;
      }
      #Header_imag{
            width:20px;
            position: absolute;
            top:-13px;
            left: -1px;
      }
      #Header_logo{
            width: 100%;
            text-align: center;
            position: absolute;
            top: 15px;
      }
      .Header_logo{
            cursor: pointer;
            display: inline-block;
            width: 27%;
      }
      #Header_logo_img{
            width: 350px;
      }
      #Header_bottom{
            width:100%;
            height: 50px;
            position: absolute;
            bottom: 0;
            border-top: 1.2px solid #999999;
            border-bottom: 2px solid #999999;
            font-weight: 700;
      }
      #Header_bottom_inner{
            cursor: pointer;
            height: 50px;
            width: 530px;
            position: absolute;
            right: 60px;
      }
      .Header_bottom_inner{
            text-decoration: none;
            color: #999999;
            height: 50px;
            line-height: 50px;
      }
      .Header_bottom_img{
            text-decoration: none;
            color: #666666;
            padding-left: 10px;
      }
      #Header_bottom_img{
            height: 22px;
      }
      .Header_bottom_rowbar{
            height: 50px;
            border-right: 1.2px solid #999999;
            display: inline-block;
            padding-right: 10px;
      padding-left: 3px;
      }
      #Header_bottom_view{
            border-left: 1.2px solid #999999;
            height: 50px;
            display: inline-block;
            padding-right: 5px;
      padding-left: 10px;
      }
      .Header_bottom_rowimg{
            height: 50px;
            display: inline-block;
      }
      /* 모달창 */
		.modal {
			display: none; /* Hidden by default */
			position: fixed; /* Stay in place */
			z-index: 10; /* Sit on top */
			padding-top: 100px; /* Location of the box */
			left: 0;
			top: 0;
			width: 100%; /* Full width */
			height: 100%; /* Full height */
			overflow: auto; /* Enable scroll if needed */
			background-color: rgb(0, 0, 0); /* Fallback color */
			background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
		}
		
		.modal-content {
			width: 75%;
			padding: 16px;
			background-color: #fefefe;
			width: 460px;
			margin: 0 auto;
		}
		
		.close {
			float: right;
			font-weight: bold;
			font-size: 15px;
			background-color: #999;
			color: white;
			display: inline-block;
			width: 30px;
			height: 30px;
			text-align: center;
			line-height: 30px;
		}

		.close:hover, .close:focus {
			color: #000;
			text-decoration: none;
			cursor: pointer;
		}
		#header_div {
			width: 176px;
			margin: 62px auto;
		}
		
		.div_input {
			background-color: white;
			border: 1px solid #dadada;
			width: 408px;
			height: 29px;
			margin-bottom: 14px;
			padding: 10px 35px 10px 15px;
			line-height: 1px;
		}
		
		.input_login {
			width: 408px;
			height: 16px;
			border-width: 0;
			padding: 7px 0px 6px 0px;
		}
		
		#btn_login {
			width: 460px;
			height: 59px;
			text-align: center;
			font-size: 22px;
			background-color: #6495ED;
			display: block;
			color: white;
			line-height: 61px;
			padding-top: 2px;
		}
		
		#err_chk {
			display: none;
			font-size: 11px;
			color: red;
		}
		
		#member {
			color: #8c8c8c;
			font-size: 12px;
			text-align: center;
			padding-top: 10px;
		}
		
		#member a:hover {
			text-decoration: underline;
		}
		
		.si {
			color: #D5D5D5;
		}      
</style>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		// 포커스 가면 색 변경 블러가 되면 색 해제
		$("#login_id").focus(function() {
			$("#naver_id").css("border", "1px solid #6495ED");

		});
		$("#login_pw").focus(function() {
			$("#naver_pw").css("border", "1px solid #6495ED");

		});
		$("#login_id").blur(function() {
			$("#naver_id").css("border", "1px solid #dadada");

		});
		$("#login_pw").blur(function() {
			$("#naver_pw").css("border", "1px solid #dadada");

		});
	});
	// 값이 없으면 로그인 안되고 경고창 뜨게 하기
	$(document).on("click","#btn_login",function() {

				var id = $("#login_id");
				var pw = $("#login_pw");

				var lid = id.val();
				var lpw = pw.val();
				if (lid == "") {
					id.focus();
					$("#err_chk").text("아이디를 입력해주세요.").css("display", "block")
							.css("color", "red");
					return false;
				} else if (lpw == "") {
					pw.focus();
					$("#err_chk").text("비밀번호를 입력해주세요.").css("display", "block")
							.css("color", "red");
					return false;
				}

				$.ajax({
					url : "loginck.unicol",
					type : "POST",
					dataType : "json",
					data : "id=" + lid + "&pw=" + lpw,
					success : function(data) {
						if (data.flag == "0") {
							$("#err_chk").text("아이디나 비밀번호를 틀리셨습니다.").css(
									"display", "block").css("color", "red");
							id.select();
							return false;
						} else if (data.flag == "1") {
							location.reload();
						}
					},
					error : function() {
						alert("System Error!!!");
						return false;
					}
				});
			});
	$(document).on("click","#logout",function (){
		$.ajax({
			url: "logout.unicol",
			type: "POST",
			dataType: "json",
			success : function(data) {
				if (data.flag =="1") {
					alert("로그아웃 성공");
					location.reload();
				}else if (data.flag =="0")
					alert("로그아웃 실패");
			},	
			error : function() {
				alert("System Error!!!");
				return false;
			}
		});
	});
	
</script>
</head>
<body>
      <!-- Header -->
      <div id="Header_box">
            
            <!-- Header_top  -->
            <div id="Header_top">
                  <div id="Header_top_wrap">
                  	<c:choose>
                  		<c:when test="${empty sessionScope.loginUser}">
                        <a href="#" class="Header_inner" id="Header_login">로그인</a>
                        <span id="Header_bar"></span>
                       		<div class="modal" id="myModal">
								<div class="modal-content">
									<span class="close">&times;</span>
										<div id="header_div">
											<a href="index.unicol"> <img alt="유니콜로지 로고"
												src="image/logo1.png">
											</a>
										</div>
										<form action="sessionaction.unicol" name="frm_login"
											id="frm_login" method="POST">
											<div class="div_input" id="naver_id">
												<input type="text" placeholder="아이디" class="input_login"
													id="login_id" name="login_id">
											</div>
											<div class="div_input" id="naver_pw">
												<input type="password" placeholder="비밀번호"
													class="input_login" id="login_pw" name="login_pw">
											</div>
											<div id="err_chk">아이디 또는 비밀번호가 맞지 않습니다.</div>
											<!-- 버튼은 여러가지 있지만 그중에서 앵커태그가 가장 편하다.-->
											<div>
												<a href="#" id="btn_login">로그인</a>
											</div>
										</form>
										<div id="member">
											<a href="#">아이디 찾기</a>&nbsp <span class="si"> | </span>&nbsp
											<a href="#">비밀번호 찾기</a>&nbsp <span class="si"> | </span>&nbsp
											<a href="constract.sidedish">회원가입</a>&nbsp
										</div>
								</div>
							</div>
	                       <a href="#" class="Header_inner" id="Header_member">회원가입</a>
                  		</c:when>
                  		<c:otherwise>
                  			<span id="Header_bar"></span>
                  			<a class="Header_inner" style="width: 150px;"><span
										style="color: #fff; background: #88b04b; padding: 2px 4px;">${sessionScope.loginUser.mname}
											(${sessionScope.loginUser.mid})</span></a>
							<span id="Header_bar"></span>
							<a class="Header_inner"><a href="#" id="logout">로그아웃</a></a>
                  		</c:otherwise>
                  	</c:choose>
	                       <span id="Header_bar"></span>
	                       <a href="#" class="Header_inner" id="Header_mypage">마이페이지</a>
	                       <span id="Header_bar"></span>
	                       <a href="#" class="Header_inner" id="Header_contact"><img alt="letter_img" src="image/index_Img/header-letter.png" id="Header_imag"></a>
                  </div>
            </div>      
            
            <!-- Header_logo -->
            <div id="Header_logo">
                  <a href="#" class="Header_logo"><img alt="logo" src="image/index_Img/LOGO1.png" id="Header_logo_img"></a>
            </div>
            
            <!-- Header_bottom -->
            <div id="Header_bottom">
                  <div id="Header_bottom_inner">
                        <div class="Header_bottom_rowbar"><a href="#" class="Header_bottom_inner" id="Header_bottom_view">기업자소서</a></div>
                        <div class="Header_bottom_rowbar"><a href="#" class="Header_bottom_inner" id="Header_bottom_keyword">자소서핵심키워드분석</a></div>
                        <div class="Header_bottom_rowbar"><a href="#" class="Header_bottom_inner" id="Header_bottom_writing">자소서작성</a></div>
                        <div class="Header_bottom_rowbar"><a href="#" class="Header_bottom_inner" id="Header_bottom_admin">이력서관리</a></div>
                        <div class="Header_bottom_rowimg"><a href="#" class="Header_bottom_img"><img alt="Header_hamberger" src="image/index_Img/hemberger.png" id="Header_bottom_img"></a></div>
                  </div>
            </div>
      </div>
</body>
</html>
<script type="text/javascript">
	
	
	// Get the modal
	var modal = document.getElementById('myModal');

	// Get the button that opens the modal
	var btn = document.getElementById("Header_login");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];

	// When the user clicks the button, open the modal 
	btn.onclick = function() {
	    modal.style.display = "block";
	}

	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
	    modal.style.display = "none";
	}

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	    if (event.target == modal) {
	        modal.style.display = "none";
	    }
	}
</script>