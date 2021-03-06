<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
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
		display: none;
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
		display: none;
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
		display: block;
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
	
	.resumeBtn {
          display: inline-block;
		  height: 23px;
		  padding: 1px 9px 3px 9px;
		  border: 1px solid #e4e4e4;
		  box-sizing: border-box;
		  background-color: #fff;
		  color: #444;
		  font-size: 12px;
		  letter-spacing: -1px;
		  line-height: 17px;
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
	
	/* 자기소개서  */
	.resume_list_table tr td {
 	    height: 50px;
	    padding: 13px 5px;
		background: #fff;
		border-left: 1px solid #eaeaea;
		border-bottom: 1px solid #eaeaea;
		box-sizing: border-box;
		color: #444;
		font-size: 13px;
		text-align: center;
		word-break: break-all;
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
	
/* 	#member_update_info {
		border-top: #686868 1px solid;
		border-bottom: #eaeaea 1px solid;
	} */
	
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
	
	#cover_letter_wrap {
		margin-top: 40px;
	}
	
	/* 모달창 css */
	/* The jasowritemodal (background) */
	.jasowritemodal {
	    display: none; /* Hidden by default */
	    position: fixed; /* Stay in place */
	    z-index: 1; /* Sit on top */
	    padding-top: 250px; /* Location of the box */
	    left: 0;
	    top: 0;
	    width: 100%; /* Full width */
	    height: 100%; /* Full height */
	    overflow: auto; /* Enable scroll if needed */
	    background-color: rgb(0,0,0); /* Fallback color */
	    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
	}
	
	/* jasowritemodal Content */
	.jasowritemodal-content {
	    background-color: #fefefe;
		margin: auto;
		padding: 20px;
		border: 1px solid #888;
		width: 300px;
		height: 250px;
	}
	
	/* The Close Button */
	.close {
	    color: #aaaaaa;
	    float: right;
	    font-size: 28px;
	    font-weight: bold;
	}
	
	.close:hover,
	.close:focus {
	    color: #000;
	    text-decoration: none;
	    cursor: pointer;
	}
	
	
	
	
	.new_jasowrite {
		text-align: center;
		margin: 100px 0 70px;
		font-size: 18px;
		font-weight: bold;
	}
	.jasomodalYN {
		display: inline-block;
		width: 78px;
		height: 38px;
		line-height: 38px;
		text-align: center;
	}
	.modalY {
		border: 1px solid #6495ed;
		background-color: #6495ed;
		float: left;
		margin-left: 30px;
	}
	.jasomodalYN > a {
		display: inline-block;
		width: 78px;
		height: 38px;
	}
	.modalY >a {
		color: white;	
	}
	.modalN {
		border: 1px solid #ccc;
		float: right;
		margin-right: 30px;
	}
	
	.jaso_title_modalContent {
		box-shadow: 0 0 5px #d8d8d8;
	}
	
	#file_list_wrap {
		margin-top: 50px;
	}

</style>
</head>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var flag = "${flag}";
		if(flag == 1) {
			location.href="mypage.unicol?flag=" + flag;
		}
		// 자기소개서 수정버튼 클릭시
	    $(".cmodify_btn").on("click", function() {
	    	var rnum = $(this).attr("data_num");
	    	alert("rnum : " + rnum);
	    	  
	    	location.href = "jasoModify.unicol?rnum=" + rnum;
	      		  
	     });
		
		// 이력서 수정버튼 클릭시 
		$(".rmodify_btn").on("click", function() {
			var resume_no = $(this).attr("data_num");
			alert("resume_no : " + resume_no);
			
			location.href = "resumeModify.unicol?resume_no=" + resume_no;
		});

		
		// 수정완료 클릭시 
		$("#update_complete").on("click", function() {
			
			/* email 정규식 및 null 체크  */
			var email = $("#email");
			var email01 = $("#email01");
			var memail = email.val() + "@" + email01.val();
			alert("memail : " + memail);
			
			var regEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			if(email.val() == "") {
				email.focus();
				return false;
			} else if(email01.val() == "") {
				email01.focus();
				return false;
			} else if(!regEmail.test(memail)) {
				alert("잘못된 email 형식입니다.");
				email.focus();
				return false;
			}
			$("#memberupdatefrm").submit();		
		});

	}); 
	
	// 이력서 삭제 버튼 클릭시 
	$(document).on("click", ".cdelete_btn", function(){
		var num = $(this).attr("data_num");
		$("#jasodeletenum").val(num);
		$(".new_jasowrite").text("자소서 삭제");
		$("#jasowritejasowritemodal").css("display", "block");
	});
	
	//리모컨 모달창 닫는 코드
	$(document).on("click", ".close", function(){
		$("#jasowritejasowritemodal").css("display", "none");
	});
	$(document).on("click", ".jasomodalN", function(){
		$("#jasowritejasowritemodal").css("display", "none");
	});
	
	$(document).on("click", ".jasomodalY", function(){
		var num = $("#jasodeletenum").val();
		$.ajax({
			url : "jasodelete.unicol",
			type : "POST",
			dataType : "JSON",
			data : "num=" + num,
			success : function(data) {
				if (data.flag == "1") {
					$("tr[data_num=" + num + "]").remove();
					$("#jasowritejasowritemodal").css("display", "none");
				}
			},
			error : function(data) {
				alert("System Error!!!");
			}
			
		});
	});

</script>
<body>
 				  <input type="hidden" value=""  id="jasodeletenum">
                  <!-- 이력서 관리  --> 
                  <div id="resume_management_wrap">
                  	<div class="resume_management_title">
                  		<h3>이력서 관리</h3>
                  		<ul class="resume_guide">
                  			<li>- 이력서는 <strong>최대5개</strong>까지 작성하여 등록 가능합니다.</li>
                  			<li>- 지원하고자 하는 회사마다 이력서 내용을 다르게 하여 지원 가능합니다.<br>
                  			&nbsp;&nbsp;&nbsp;(입사지원을 한 후 이력서의 내용을 수정해도 이전에 지원한 이력서의 내용은 변경되지 않습니다.)</li>
                  			<li>- 인재정보는 1개의 이력서만 공개 가능합니다.</li>
                  			<li></li>
                  		</ul>
                  	</div>
                  	
                  	<!-- 이력서 리스트 --> 
                  	<div id="resumelistTitle_wrap">
                  		<h3 id="resume_list_title">이력서 리스트</h3>
                  		<form action="">
                  			<table class="resume_list_table">
                  				<colgroup>
                  					<col style="width:50px;">
                  					<col style="width:*;">
                  					<col style="width:200px">
                  					<col style="width:125px;">
                  					<col style="width:125px;"> 
                  				</colgroup>
                  				<tr>
                  					<th><input type="checkbox"></th>
                  					<th>이력서 제목</th>
                  					<th>관리</th>
                  					<th>최근 등록일</th>
                  					<th>최근 수정일</th>
                  				</tr>
                  				
                  				<c:forEach items="${resumeList}" var="resumeList">
	                  				<tr>
	                  					<td><input type="checkbox"></td>
	                  					<td><a href="resumeView.unicol?resume_no=${resumeList.resume_no}">${resumeList.resume_title}</a></td>
	                  					<td>
	                  						<a class="resumeBtn rmodify_btn" id="resumeModify_btn" data_num="${resumeList.resume_no}" href="#">수정</a>
	                  						<a class="resumeBtn rdelete_btn" id="resumeDelete_btn" href="#">삭제</a>
	                  					</td>
	                  					<td><fmt:formatDate pattern="yyyy-MM-dd " value="${resumeList.regdate}"/></td>
	                  					<td>-</td>
	                  				</tr>
                  				</c:forEach>
                  				
                  				<c:if test="${resumeList.size() == 0}">
	                  				<tr>
	                  					<td colspan="5">
	                  						<div id="resumelist_none">
	                  						<strong>저장된 <span id="resumeStrong">이력서</span> 가 없습니다.</strong>
	                  						<p>지금 바로 나만의 이력서를 작성해보세요</p>
	                  						<a id="resumelist_none_btn" href="resumeInsert.unicol">이력서 작성</a>
	                  						</div>
	                  					</td>
	                  				</tr>
                  				</c:if>	
                  				
                  			</table>
                  		</form>
                  	</div>
                  	
                  	<!-- 자기소개서 리스트 --> 
                  	<div id="cover_letter_wrap">
                  		<h3 id="rcover_letter_list_title">자기소개서 리스트</h3>
                  		<form action="">
                  			<table class="resume_list_table">
                  				<colgroup>
                  					<col style="width:50px;">
                  					<col style="width:*;">
                  					<col style="width:200px">
                  					<col style="width:125px;">
                  					<col style="width:125px;"> 
                  				</colgroup>
                  				<tr>
                  					<th><input type="checkbox"></th>
                  					<th>자기소개서 제목</th>
                  					<th>관리</th>
                  					<th>최근 등록일</th>
                  					<th>최근 수정일</th>
                  				</tr>
                  				
                  				<c:forEach items="${coverletter}" var="coverletter">
	                  				<tr data_num="${coverletter.num}" class="resumewrap">
	                  					<td><input type="checkbox"></td>
	                  					<td><a href="#">${coverletter.title}</a></td>
	                  					<td>
	                  						<a class="resumeBtn cmodify_btn" id="resumeModify_btn" data_num="${coverletter.num}" href="#">수정</a>
	                  						<a class="resumeBtn cdelete_btn" id="resumeDelete_btn" data_num="${coverletter.num}">삭제</a>
	                  					</td>
	                  					<td><fmt:formatDate pattern="yyyy-MM-dd " value="${coverletter.regdate}"/></td>
	                  					<td>-</td>
	                  				</tr>
                  				</c:forEach>
                  				
                  				<c:if test="${coverletter == null}">
                  				<tr>
                  					<td colspan="5">
                  						<div id="resumelist_none">
                  						<strong>저장된 <span id="resumeStrong">자기소개서</span> 가 없습니다.</strong>
                  						<p>지금 바로 나만의 자기소개서를 작성해보세요</p>
                  						<a id="resumelist_none_btn" href="resumeInsert.unicol">자소서 작성</a>
                  						</div>
                  					</td>
                  				</tr>
                  				</c:if>	
                  				
                  			</table>
                  		</form>
                  	</div>
                  	
                  	<!--첨부파일 리스트  --> 
                  	<div id="file_list_wrap">
                  		<h3 id="Attachments_list_title">첨부파일 리스트</h3>
                  		<form action="">
                  			<table class="resume_list_table">
                  				<colgroup>
                  					<col style="width:50px;">
                  					<col style="width:*;">
                  					<col style="width:200px">
                  					<col style="width:125px;">
                  					<col style="width:125px;"> 
                  				</colgroup>
                  				<tr>
                  					<th><input type="checkbox"></th>
                  					<th>이력서 제목</th>
                  					<th>관리</th>
                  					<th>최근 등록일</th>
                  					<th>최근 수정일</th>
                  				</tr>
                  				
                  				<tr>
                  					<td colspan="5">
                  						<div id="resumelist_none">
                  						<strong>저장된 <span id="resumeStrong">자소서</span> 가 없습니다.</strong>
                  						<p>지금 바로 나만의 자소서를 작성해보세요</p>
                  						<a id="resumelist_none_btn" href="resumeInsert.unicol">자소서 작성</a>
                  						</div>
                  					</td>
                  				
                  			</table>
                  		</form>
                  	</div>
                  </div>
                  
                  <div id="jasowritejasowritemodal" class="jasowritemodal">
					<!-- jasowritemodal content -->
					<div class="jasowritemodal-content">
						<span class="close">&times;</span>
						<div class="new_jasowrite"></div>
						<div>
							<span class="jasomodalYN modalY"><a href="#" class="jasomodalY">확인</a></span>
							<span class="jasomodalYN modalN"><a href="#" class="jasomodalN">취소</a></span>
						</div>
					</div>
				</div>
                  
</body>
</html>
