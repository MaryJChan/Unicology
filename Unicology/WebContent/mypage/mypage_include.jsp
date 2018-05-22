<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body, ul {
		margin: 0;
		padding: 0;
	}
	
	ul {
		list-style-type: none;
	}
	
	a:link, a:visited {
		text-decoration: none;
		color: inherit;
	}
	
	/* 전체 영역 */
	#mypageContainer {
		width: auto;
		background-color: #f8f8f8;
		min-height: 100%;
		padding: 20px 0 60px;
	}
	
	/* 컨텐츠 영역(높이 수정할것) */
	#inner_mypage {
		position: static;
		width: 1200px;
		/* min-height: 500px; */
		margin: 0 auto;
		height: 1400px;
	}
	
	/* 사이드 영역  */
	.aside_wrap {
		position: relative;
		float: left;
		width: 180px;
		/* margin-left는 헤더의 시작부분과 다시 맞출 것  */
		background-color: #fff;
		text-align: center;
		padding: 5px;
		box-shadow: 0 1px 1px 1px rgba(0, 0, 0, 0.12);
	}
	
	/* 환경설정 버튼  */
	#preference_img {
		float: right;
	}
	/* 프로필 영역 */
	.profile_wrap {
		margin-top: 30px;
		margin-bottom: 30px;
	}
	
	#h_name {
		font-size: 15px;
	}
	
	/*이력서 등록 버튼 */
	#resume_register {
		border: 1px solid #e5e5e5;
		font-size: 13px;
		padding: 3px 10px;
	}
	
	/*summary_wrap 영역  */
	#summary_wrap {
		width: 780px;
		min-height: 500px;
		margin-left: 30px;
		float: left;
	}
	
	/* dashboard 영역  */
	.active_list {
		padding-top: 35px;
		text-align: center;
	}
	
	.active_list li {
		display: inline-block;
		width: 130px;
		margin: 0 30px;
		padding-top: 15px;
		height: 130px;
	}
	
	.active_list li:hover {
		background-color: #fff;
		width: 130px;
		height: 130px;
		border-radius: 50%;
		box-sizing: border-box;
		margin: 0 30px;
		text-align: center;
		cursor: pointer;
	}
	
	.doing {
		display: block;
		height: 62px;
		font-size: 18px;
		color: #cccccc;
	}
	
	.doing em {
		font-size: 50px;
		color: #444;
	}
	
	/* summary 영역  */
	#recruit_summary {
		background-color: #fff;
		padding: 0 30px;
		box-shadow: 0 1px 1px 1px rgba(0, 0, 0, 0.12);
		display: block;
		margin-top: 10px;
	}
	
	#desc {
		height: 39px;
		border-bottom: 1px solid #ebebeb;
		line-height: 39px;
		font-size: 18px;
		font-weight: bold;
	}
	
	#summary_inner {
		width: 100%;
	}
	
	.recurit_sector {
		font-size: 13px;
		color: #888;
	}
	
	.bar {
		font-size: 11px;
		padding: 0 3px;
		color: #e5e5e5;
	}
	
	.info_date {
		width: 80px;
		font-size: 12px;
		color: #666;
		text-align: center;
		vertical-align: middle;
		display: table-cell;
	}
	
	.btn_immediately {
		width: 103px;
		height: 28px;
		box-sizing: border-box;
		overflow: hidden;
		text-align: center;
		border: 0;
		padding: 0;
		vertical-align: top;
		cursor: pointer;
		background: #ff8d5a;
		margin-top: 10px;
	}
	
	.span_immediately {
		background: #ff8d5a;
		color: #fff;
		border: 1px solid #ff8d5a;
	}
	
	#info_list {
		padding: 20px 10px 20px 0;
		width: 630px;
		line-height: 22px;
		display: table-cell;
	}
	
	/* summary 탭영역  */
	.recruit_list_navigation {
		
	}
	
	#recruit_Tab {
		height: 55px;
		border-bottom: 1px solid #7e7e7e;
		margin-top: 30px;
	}
	
	.recruit_list_navigation li {
		width: 195px;
		height: 55px;
		float: left;
		background: #fafafa;
		border-top: 1px solid #e6e6e6;
		border-right: 1px solid #e6e6e6;
		border-left: 1px solid #e6e6e6;
		margin-top: -1px;
		margin-right: -1px;
		margin-left: -1px;
		text-align: center;
		line-height: 55px;
	}
	
	.recruit_list_navigation li.on {
		background: #fff;
		border-color: #888b9e;
		z-index: 2;
	}
	
	/* left side 메뉴 (이력서 관리 및 회원정보 수정) */
	#section_leftmenu {
		float: left;
		position: absolute;
		background-color: white;
		top: 402px;
		box-shadow: 0 1px 1px 1px rgba(0, 0, 0, 0.1);
		width: 190px;
	}
	
	.leftmenu {
		padding: 15px 20px;
		border-top: 1px solid #eeeef0;
	}
	
	.leftmenu_title {
		padding: 5px 0;
		font-size: 16px;
		font-weight: bold;
		color: #000;
	}
	
	.leftmenu li {
		padding: 1px 0 1px 10px;
		font-size: 13px;
		color: #666;
	}
	
	/*right side 메뉴  */
	#section_rightmenu {
		position: relative;
		float: right;
		background-color: white;
		box-shadow: 0 1px 1px 1px rgba(0, 0, 0, 0.1);
		width: 120px;
		margin-top: 10px;
		margin-right: 50px;
	}
	
	.rightmenu li a {
		display: block;
		height: 22px;
		padding: 12px 0 0 16px;
		font-size: 12px;
		letter-spacing: -0.75px;
		color: #666;
	}
	
	.rightmenu span {
		padding-right: 3px;
	}
	
	/* 이력서 관리   */
	#resume_management_wrap {
		display: none;
		background-color: white;
		margin-left: 211px;
		padding: 12px 40px 80px;
	}
	
	.resume_management_title>h3 {
		font-size: 28px;
		line-height: 36px;
		color: #444;
		font-family: "맑은 고딕", gulim, "돋움", "dotum";
	}
	
	.resume_guide>li {
		color: #888;
		font-size: 13px;
		line-height: 22px;
	}
	
	.resume_guide {
		padding: 32px 0 44px;
	}
	
	/* 이력서 테이블 */
	.resume_list_table {
		width: 100%;
		border-top: 1px solid #444;
		border-spacing: 0;
		border-collapse: collapse;
		table-layout: fixed;
	}
	
	.resume_list_table th {
		height: 43px;
		border-left: 1px solid #eaeaea;
		background: #f8f8f8;
		color: #666;
		font-size: 13px;
		text-align: center;
		box-sizing: border-box;
	}
	
	#resumelist_none {
		display: table-cell;
		width: 1000px;
		height: 233px;
		text-align: center;
		vertical-align: middle;
	}
	
	#resumelist_none strong {
		display: block;
		margin-bottom: 10px;
		color: #444;
		font-size: 18px;
		font-weight: bold;
	}
	
	#resumelist_none p {
		margin-bottom: 23px;
		color: #888;
		font-size: 14px;
	}
	
	#resumelist_none_btn {
		display: inline-block;
		height: 32px;
		padding: 5px 13px 9px;
		border: 1px solid #5f75eb;
		box-sizing: border-box;
		background-color: #6b80f1;
		color: #fff;
		font-size: 13px;
		letter-spacing: -1px;
		line-height: normal;
		vertical-align: top;
	}
	
	#memberInfo_modify_title_area {
		min-height: 45px;
		height: auto;
		padding-bottom: 49px;
	}
	
	/* 개인정보 수정  */
/* 	#memberUpdate_wrap {
		padding-left: 220px;
		width: 795px;
		display: none;
		position: relative;
	}
	 */
	#memberUpdate_content {
		padding: 35px 30px 80px;
		background-color: white;
		box-shadow: 0 1px 1px 1px rgba(0, 0, 0, 0.12);
	}
	
	#memberUpdate_content h3 {
		font-size: 28px;
		line-height: 36px;
		color: #444;
		font-family: "맑은 고딕", gulim, "돋움", "dotum";
		padding-bottom: 49px;
	}
	
	#member_update_info {
		border-top: #686868 1px solid;
		border-bottom: #eaeaea 1px solid;
	}
	
	#member_update_profile {
		width: 177px;
		position: absolute;
		top: 205px;
		text-align: center;
		margin-left: 8px;
	}
	
	#memname {
		width: 94px;
	    text-align: center;
	}
	
	#memid {
	    width: 116px;
	    margin: 0 auto;
	    font-size: 13px;
	    color: #888;
	    text-align: center;
	    padding-top: 8px;
	}
	
	#tbl_info {
		margin-left: 200px;
		border-collapse: collapse;
		width: 540px;
	}
	
	#tbl_info th {
		padding: 9px 0px 9px 20px;
		border-top: #eaeaea 1px solid;
		background: #f7f7f7;
		color: #666;
		text-align: left;
		font-size: 13px;
		font-weight: normal;
	}
	
	#tbl_info td {
	    padding: 9px 0px 9px 15px;
	    border-top: #eaeaea 1px solid;
	    background: #fff;
	    color: #444;
	    text-align: left;
	    letter-spacing: 0;
	    word-spacing: 0;
	}
	
	.txt_chk {
		height: 18px;
		padding: 0 7px 0 8px;
	    line-height: 15px;
	    font-size: 13px;
	    letter-spacing: -1px;
	    color: #444;
	}
	
	#selemail {
		margin-top: 7px;
	}
	    
	#addr_btn {
		font-size: 12px;
		width: 50px;
		border: #8ca0ff 1px solid;
	    color: #8ca0ff;
	    border-radius: 8px;
	    padding: 3px;
	}
	
	.update_input {
	    height: 32px;
	    padding: 0 11px 1px 11px;
	    box-sizing: border-box;
	    border: 1px solid #dbdbdb;
	    /* line-height: 28px; */
	    background: #fff;
	    /* color: #444; */
	    font-size: 13px;
	    vertical-align: middle;
	}
	
	#update_btn {
	    margin-top: 30px;
	    text-align: center;
	    font-size: 0;
	}
	
	#update_complete {
	    width: 200px;
	    height: 50px;
	    padding: 9px 31px 9px;
	    font-size: 16px;
	    color: #fff;
	    text-align: center;
	    border: 1px solid #5f75eb;
	    background-color: #6b80f1;
	}
	/* 
	 * 김성민 회원탈퇴 모달창
	 */
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
		
		.Dmodal-content {
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
		.input_delete {
			width: 408px;
			height: 16px;
			border-width: 0;
			padding: 7px 0px 6px 0px;
		}
		
		#btn_delete {
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
		
		#err_chk1 {
			display: none;
			font-size: 11px;
			color: red;
		}
</style>
</head>
<body>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	
	$(document).ready(function() {
		mypage();
		
		$(".recruit_list_navigation li").on("click", function() {
			$(".recruit_list_navigation li").removeClass('on');
			$(this).attr("class", "on");
		});
		
		/* 회원정보 수정 클릭 시 */
		$("#memberInfo_modify_btn").on("click", function() {
			$("#summary_wrap").css("display", "none");
			$("#memberUpdate_wrap").css("display", "block");
			
			$.ajax({
				//서블릿이 어디로 갈건지 
				url: "memberUpdateView.unicol",
				type: "POST",
				/* data: "bno=" + bno, */
				success: function(result) {
					$("#memberUpdate_wrap").html(result);
				}
			});	
		});
		
		/* 이력서 관리 클릭 시  */
		$("#resume_management").on("click", function() {
			$("#summary_wrap").css("display", "none");
			$("#resumelistTitle_wrap").css("display", "block");
			
			$.ajax({
				
				//서블릿이 어디로 갈건지 
				url: "resume_management.unicol",
				type: "POST",
				/* data: "bno=" + bno, */
				success: function(result) {
					
					$("#resumelistTitle_wrap").html(result);
				}
			});
			
			
			
		});
		
		

	});

	function mypage() {
		
		$.ajax({
			
			//서블릿이 어디로 갈건지 
			url: "mypageMain.unicol",
			type: "POST",
			/* data: "bno=" + bno, */
			success: function(result) {
				$("#summary_wrap").html(result);
			}
		});
	}
</script>
	<div id="mypageContainer">
		<div id="inner_mypage">

			<!-- 사이드 영역(left)  -->
			<aside class="aside_wrap">
				<a href="#"><img id="preference_img" alt="" src="image/mypage/preference.png"></a>
				<div class="profile_wrap">
					<img alt="" src="image/mypage/user.png">
					<h2 id="h_name">박아영 님</h2>
					<a id="resume_register" href="resumeInsert.unicol">내 이력서 등록</a>
				</div>
			</aside>

			<div id="section_leftmenu">
				<div class="leftmenu">
					<h2 class="leftmenu_title">이력서 관리</h2>
					<ul>
						<li><a href="resumeInsert.unicol">이력서 등록</a></li>
						<li><a href="#" id="resume_management">이력서 관리</a></li>
					</ul>
				</div>
				<div class="leftmenu">
					<h2 class="leftmenu_title">회원정보 관리</h2>
					<ul>
						<li><a id="memberInfo_modify_btn" href="#">회원정보 수정</a></li>
						<li><a href="#">비밀번호 변경</a></li>
						<!-- 김성민 추가 -->
						<li><a id="memberInfo_delete_btn" href="#">회원 탈퇴</a></li>
					</ul>
					<div class="modal" id="myDModal">
						<div class="Dmodal-content">
							<span class="close">&times;</span>
							<div id="header_div">
								<a href="index.unicol"> <img alt="유니콜로지 로고"
									src="image/index_Img/logo.png">
								</a>
								<h5>
									비밀번호를 올바르게 입력 후 <br>아래와 같이 텍스트를 입력해주셔야 탈퇴가 됩니다.
								</h5>
							</div>
							<form action="memberDelete.unicol" name="frm_delete"
								id="frm_delete" method="POST">
								<div class="div_input" id="del_name">
									<input type="text" placeholder="이름" class="input_delete"
										id="delete_name" name="delete_name"
										value="${sessionScope.loginUser.mname}" readonly="readonly">
								</div>
								<div class="div_input" id="del_pw">
									<input type="password" placeholder="비밀번호" class="input_delete"
										id="delete_pw" name="delete_pw">
								</div>
								<div class="div_input" id="del_txt">
									<input type="text" placeholder="회원 탈퇴 하겠습니다."
										class="input_delete" id="delete_text" name="delete_text">
								</div>
								<input type="hidden" name="delete_id" id="delete_id"
									value="${sessionScope.loginUser.mid}">
								<div id="err_chk1">올바르게 입력해주시기 바랍니다.</div>
								<!-- 버튼은 여러가지 있지만 그중에서 앵커태그가 가장 편하다.-->
								<div>
									<a href="#" id="btn_delete">회원탈퇴</a>
								</div>
							</form>
						</div>
					</div>
				</div>

			</div>


			<!-- Mypage Main  -->
			<div id="summary_wrap"></div>
			
			<!-- 이력서 관리  -->
			<div id="resumelistTitle_wrap"></div>
			
			<!-- 회원정보 수정  -->
			<div id="memberUpdate_wrap">
			<c:forEach items="${memUpdateList}" var="memUpdateList">
						<input type="hidden" id="mbirth" value="${memUpdateList.mbirth}">
					  	<input type="hidden" id="mgender" value="${memUpdateList.msex}">
					  	<input type="hidden" id="memail" value="${memUpdateList.memail}">
			</c:forEach>			  	
			</div>
			
			<!--스크랩  -->
			<div id="scrap_wrap"></div>

			<div id="section_rightmenu">
				<div class="rightmenu">
					<ul>
						<li><a href="#"> <span><img alt=""
									src="image/mypage/write.png">자소서 작성</span>
						</a></li>
						<li><a href="#"> <span><img alt=""
									src="image/mypage/spell.png">맞춤법 검사</span>
						</a></li>
						<li><a href="#"> <span><img alt=""
									src="image/mypage/count.png">글자수 세기</span>
						</a></li>
						<li><a href="#"> <span><img alt=""
									src="image/mypage/calculator.png">학점 변환</span>
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

</body>
<%@include file="../include/footer.jsp"%>
</html>