<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');
	body, url{
		margin:0;
		padding:0;
		font-family: 'Nanum Gothic', sans-serif;
	}
	.header_box{
		border-top: 5px solid #266FE0;
		height:100px;
		background-color: white;
	}
	.logo_div{
		height: 100px;
		line-height: 100px;
		vertical-align: middle;
		display: inline-block;
		margin: 0 100px;
	}
	#logo{
		height: 45px;
		margin: 25px auto;
		border: 1px dashed #006699;
	}
	.menu_box{
		display: inline-block;
		width: 500px;
		height: 100px;
		line-height: 100px;
		float: right;
	}
	.header_menu_btn{
		color: black;
		text-decoration: none;
		font-size: 16px;
		margin: 0 15px;
	}
	#hamberger_btn{
		height: 17px;
	}
	.header_menu{
		display: inline-block;
		height: 90px;
	}
	.header_menu:hover {
		border-bottom: 2px solid #266FE0;
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
			width: 300px;
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
	<div class="header_box">
		<div class="logo_div"><a href="index.unicol"><img alt="logo" src="image/index_Img/logo.png" id="logo"></a></div>
		<div class="menu_box"> 
			<c:choose>
           		<c:when test="${empty sessionScope.loginUser}">
				<div class="header_menu" id="header_login"><a href="#" class="header_menu_btn"id="header_menu_login">로그인</a></div>
				<div class="modal" id="myModal">
								<div class="modal-content">
									<span class="close">&times;</span>
										<div id="header_div">
											<a href="index.unicol"> <img alt="유니콜로지 로고"src="image/index_Img/logo.png">
											</a>
										</div>
										<form action="sessionaction.unicol" name="frm_login"id="frm_login" method="POST">
											<div class="div_input" id="naver_id">
												<input type="text" placeholder="아이디" class="input_login"id="login_id" name="login_id">
											</div>
											<div class="div_input" id="naver_pw">
												<input type="password" placeholder="비밀번호"class="input_login" id="login_pw" name="login_pw">
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
											<a href="/Unicology/constract.unicol">회원가입</a>&nbsp
										</div>
								</div>
							</div>
				<div class="header_menu" id="header_member"><a href="/Unicology/constract.unicol" class="header_menu_btn"id="header_menu_member">회원가입</a></div>
				</c:when>
               		<c:otherwise>
                  		<a class="Header_inner" style="width: 150px;">
                  			<span style="color: #fff; background: #6495ED; padding: 2px 4px;">${sessionScope.loginUser.mname}(${sessionScope.loginUser.mid})</span>
                  		</a>
						<a class="Header_inner"><a href="#" id="logout">로그아웃</a></a>
					</c:otherwise>
               	</c:choose>
				<div class="header_menu" id="header_mypage"><a href="#" class="header_menu_btn"id="header_menu_mypage">마이페이지</a></div>
				<a href="#" class="header_menu_btn"id="header_menu_btn"><img alt="hamberger_btn" src="image/index_Img/hemberger.png" id="hamberger_btn"></a>
		</div>
	</div>
</body>
<script type="text/javascript">		
	// Get the modal
	var modal = document.getElementById('myModal');

	// Get the button that opens the modal
	var btn = document.getElementById("header_menu_login");

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
</html>