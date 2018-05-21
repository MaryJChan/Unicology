<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../include/header.jsp"%>
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
	#jobListContainer {
		width: auto;
		min-height: 100%;
		padding: 20px 0 60px;
	}
	
	/* 컨텐츠 영역(높이 수정할것) */
	#inner_jogList {
		position: static;
		width: 1200px;
		margin: 0 auto;
		height: 2000px;
	}
	
	/* 직종 타이틀  */
	#jobTitle {
		display: inline-block;
		color: #444;
		font-size: 32px;
		font-weight: normal;
		letter-spacing: -4px;
		line-height: 36px;
		vertical-align: top;
	}
	
	#searchKeyword_job {
		display: inline-block;
		margin: 26px 0 0 22px;
	}
	
	.jogList_content {
		width: 960px;
		margin: 0 auto;
	}
	
	/* 직종별  카테고리 분류 ul, li  */
	.searchMain_category {
		display: inline-block;
	}
	
	/* 직종별 카테고리 클릭시  */
	.selected {
		z-index: 110;
	    border: 1px solid #2683e2!important;
	    color: #fff!important;
	    background: #2683e2!important;
	}
	
	.searchCategory>li {
		float: left;
	}
	
	.searchCategory>li>a {
		display: block;
		padding: 7px 0 10px;
		border: 1px solid #dfdfdf;
		box-sizing: border-box;
		color: #444;
		font-size: 13px;
		letter-spacing: -1px;
		line-height: 17px;
		text-align: center;
		background: #f9f9f9;
		width: 137px;
	}
	
	.searchMainSecond_category {
		display: inline-block;
	}
	
	#emptyCategory {
		color: #f9f9f9;
	}
	
	/* 직종별 카테코리 세분류   */
	.subBox_wrap {
		overflow: hidden;
		width: 959px;
		border: 2px solid #2683e2;
		box-sizing: border-box;
		background: #fff;
	}
	
	#sales_customer {
		display: none;
	}
	
	.sub_box {
		display: block;
		height: 140px;;
	}
	
	.subBox_category {
		padding: 12px 22px;
	}
	
	.subBox_category>li {
		float: left;
		padding: 8px 12px 8px 22px;
		width: 193px;
		color: #444;
		font-size: 14px;
		line-height: 22px;
		white-space: nowrap;
		background: #fff;
		cursor: pointer;
	}
	
	.txt_count {
		margin-left: 5px;
		color: #999;
		font-size: 11px;
		letter-spacing: 0;
	}
	
	.subBox_depth_category {
		padding: 12px 22px 14px;
		border-top: 1px solid #dfdfdf;
	}
	
	.subBox_depth_category>li {
		display: inline-block;
		margin-top: 9px;
		width: 177px;
	}
	
	.txt_check {
		width: 13px;
		height: 13px;
		cursor: pointer;
		font-size: 12px;
	}
	
	.txt_point {
		font-weight: bold;
	}
	
	/* 상세검색 펼치기  */
	#searchSpread_wrap {
		text-align: center;
		margin-bottom: 30px;
		display: block;
		margin-top: 3px;
	}
	
	#searchSpread_wrap>a {
		padding: 3px 50px 6px;
		width: 156px;
		border: 1px solid #ebebeb;
		border-top: 0 none;
		box-sizing: border-box;
		color: #3c3c3c;
		font-size: 12px;
		font-weight: bold;
		letter-spacing: -1px;
		vertical-align: top;
		background: #f9f9f9;
	}
	
	/* 선택 검색 영역  */
	#search_preview {
		height: 92px;
		border: 1px solid #888;
		box-sizing: border-box;
		background: #fff;
		width: 960px;
		position: relative;
	}
	
	#searchTotal_result {
		top: 50%;
		width: 100px;
		text-align: center;
		display: inline-block;
	}
	
	#searchSelect_result {
		margin: 7px 0;
		width: 750px;
		min-height: 76px;
		border-left: 1px solid #eee;
		display: inline-block;
	}
	
	.result_guide {
		padding: 18px 0 0 18px;
		color: #888;
		font-size: 12px;
		display: block;
	}
	
	.result_guide>li>span {
		color: #6b80f1;
	}
	
	.select_result {
		overflow: hidden;
		margin: 0 0 0 -4px;
		padding: 0 18px;
		height: 50px;
		display: none;
	}
	
	.select_result>span {
		display: inline-block;
		margin: 4px 0 0 4px;
		padding: 1px 15px 4px 7px;
		height: 20px;
		border: 1px solid #9fadfa;
		box-sizing: border-box;
		color: #6b80f1;
		font-size: 11px;
		background: #fff;
	}
	
	#init_wrap {
		right: 10px;
		bottom: 2px;
		height: 15px;
		text-align: right;
	}
	
	#init_wrap a {
		color: #999;
		font-size: 11px;
		text-decoration: underline;
	}
	
	#result_btn {
		width: 95px;
		height: 91px;
		text-align: center;
		background: #888;
		display: inline-block;
		vertical-align: top;
		position: absolute;
	    top: -1px;
	    right: -1px;
	}
	
	#searchBtn {
		padding-bottom: 4px;
		width: 104px;
		height: 92px;
		color: #fff;
		font-size: 17px;
		font-weight: bold;
		line-height: 92px;
	}
	
	/* 채용공고 리스트  */
	#recruit_list {
		width: 960px;
		margin-top: 55px;
	}
	
	.tabArea {
		margin-bottom: 20px;
		padding: 0;
		border-bottom: 1px solid #666;
		letter-spacing: -1px;
	}
	
	.tabArea>li {
		float: left;
		z-index: 1;
		width: 20%;
	}
	
	.tabArea>li>a {
		display: block;
		padding: 12px 0 14px;
		border: 1px solid #eaeaea;
		border-bottom: none;
		box-sizing: border-box;
		color: #666;
		font-size: 13px;
		letter-spacing: -1px;
		text-align: center;
		white-space: nowrap;
		background: #fbfbfb;
	}
	
	.tabOn {
		z-index: 3!important;	
	}
	
	.tabOn > a {
	    margin-bottom: -1px!important;
	    border: 1px solid #777!important;
	    border-bottom: none!important;
	    color: #444!important;
	    font-size: 16px;
	    font-weight: bold;
	    letter-spacing: -2px;
	    background: #fff!important;
	    
	}
	
	#list_info {
		margin-top: 54px;
		margin-bottom: 10px;
		height: 32px;
	}
	
	.infoSelect {
		display: inline-block;
		width: 114px;
		height: 32px;
		color: #444;
		font-size: 13px;
		vertical-align: middle;
	}
	
	#scrap_btn {
		display: inline-block;
		padding: 5px 13px 9px;
		height: 32px;
		border: 1px solid #dbdbdb;
		box-sizing: border-box;
		color: #444;
		font-size: 13px;
		letter-spacing: -1px;
		vertical-align: top;
		background-color: #fff;
		cursor: pointer;
	}
	
	#favorit_btn {
		display: inline-block;
		padding: 5px 13px 9px;
		height: 32px;
		border: 1px solid #dbdbdb;
		box-sizing: border-box;
		color: #444;
		font-size: 13px;
		letter-spacing: -1px;
		vertical-align: top;
		background-color: #fff;
		cursor: pointer;
	}
	
	#applyArea {
		display: inline;
		top: 20px;
		right: 0;
	}
	
	#apply_btn {
		float: right;
		padding: 5px 13px 9px;
		height: 32px;
		border: 1px solid #dbdbdb;
		box-sizing: border-box;
		color: #444;
		font-size: 13px;
		letter-spacing: -1px;
		vertical-align: top;
		background-color: #fff;
		cursor: pointer;
	}
	
	.recruit_board {
		width: 100%;
		border-top: 1px solid #eaeaea;
		border-spacing: 0;
		border-collapse: collapse;
		table-layout: fixed;
		margin-top: 20px;
	}
	
	.recruit_board th {
		height: 38px;
		border-bottom: none;
		box-sizing: border-box;
		color: #888;
		font-size: 12px;
		font-weight: normal;
		letter-spacing: -1px;
		line-height: 30px;
		text-align: center;
		vertical-align: middle;
		background: #f8f8f8;
	}
	
	.recruit_board td {
		padding: 16px 0 11px;
		height: 51px;
		border-bottom: 1px solid #ebebeb;
		box-sizing: border-box;
		letter-spacing: -1px;
		vertical-align: top;
		table-layout: fixed;
	}
	
	.company_name {
		padding-right: 10px;
		padding-left: 15px;
		color: #333;
		font-size: 13px;
		line-height: 18px;
	}
	
	.notification_info {
		padding-right: 15px;
		padding-left: 10px;
	}
	
	.job_title {
		display: inline-block;
		width: 100%;
		color: #444;
		font-size: 15px;
		line-height: 19px;
	}
	
	.job_sector {
		margin: 6px 0 0 0;
		height: 15px;
		color: #777;
		font-size: 13px;
		line-height: 15px;
	}
	
	.job_sector span:first-child:before {
		margin: 0;
		width: 0;
		content: "";
	}
	
	.job_sector span:before {
		display: inline-block;
		margin: 0 4px 0 0;
		vertical-align: middle;
		content: ",";
	}
	
	.recruit_condition {
		color: #555;
		font-size: 12px;
		text-align: center;
	}
	
	.recruit_condition p {
		margin: 0;
		padding: 4px 0 0;
	}
	
	.recruit_condition p:first-child {
		padding: 0;
	}
	
	.working_condition {
		padding-right: 15px;
		padding-left: 15px;
		color: #555;
		font-size: 12px;
		text-align: center;
	}
	
	.working_condition p:first-child {
		margin: 0;
	}
	
	.deadline_info {
		color: #666;
		font-size: 12px;
		text-align: center;
	}
	
	.deadline_info p {
		margin: 4px 0 0;
		padding: 0;
		color: #777;
	}
	
	.deadline_info>p>a {
		border: 1px solid #ff8d5a;
		color: #fff;
		background: #ff8d5a;
		display: inline-block;
		width: 65px;
		height: 16px;
		font-family: "Malgun Gothic", 맑은고딕 !important;
		font-size: 11px !important;
		letter-spacing: -1px;
		line-height: 13px;
		vertical-align: top;
	}
	
	.reg_date {
		display: block;
		margin-top: 2px;
		color: #999;
		font-size: 12px;
	}
	
	/* 페이징  */
	#jobListpaginate {
		text-align: center;
		margin: 30px 0;
	}
	
	#paginate_ol {
		width: 500px;
		margin: 0 auto;
	}
	
	#paginate_ol li {
		display: inline-block;
		padding: 0 7px;
	}
	
	#paginate_ol li>a {
		width: 25px;
		padding: 5px 0;
		font-size: 12px;
	}
	
	.active {
		background-color: #9d9d9d;
	}
</style>
</head>
<script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		
		/* 페이지 로드시 먼저 들어가는 css (추후에는 클릭에의한 스크립트 제어)  */
		$(".sub_depth_box").css("display","none");
		$("#planning_Strategy_Management").css("display","block");
		$("#first_subcat").css("background", "#f3f5ff").css("color","#2683e2").css("font-weight", "bold");
		
		/* 직업별 클릭 시 */
		$(".subBox_category > li").on("click",function() {
			$(".subBox_category > li").removeAttr('style');
			$(this).css("background", "#f3f5ff").css("color","#2683e2").css("font-weight", "bold");
		});
		
		/* 직업별 클릭시 div display*/
		$(".searchCategory > li > a").on("click", function(){
            $(".searchCategory > li > a").removeClass('selected');
            var category = $(this).attr("id");
            alert("카테고리명 : " + category);
            var cctegory = category.slice(0,-4);
            alert("뒤에세자리 자르기 " + cctegory);
            $(this).attr("class","selected");
            $(".subBox_wrap").css("display","none");
            $("#"+cctegory).css("display","block");
            
       	});  	
       	
       	/* 직업별 세분류 클릭시  */
		$(".subBox_category > li > a").on("click", function() {
			
			var category_detail = $(this).attr("id");
			var catDetail = category_detail.slice(0,-4);
			
			$(".sub_depth_box").css("display","none");
			$("#"+catDetail).css("display","block"); 
			 
		});
       	
		
		/* 세분류 카테고리 체크박스 클릭시 검색창에 값 전달  */
		$(".depth_category_chk").on("click", function() {
			
			$(".result_guide").css("display", "none");
			$(".select_result").css("display", "block");
			
			var chkID = $(this).attr("value");
			var chkParent = $(this).parents('div').attr('id');
			var chkParent_name = $("#"+chkParent+"_btn").text();
			
			$('.select_result').append('<span>' + chkParent_name + ' > ' + chkID + '</span>');
		});
		
		/* 세분류 카테고리 검색창 선택 초기화  */
		$("#select_reset").on("click", function() {
			$(".result_guide").css("display", "block");
			$(".select_result").css("display","none");
			
			$("input:checkbox[name='depth_category_chk']").prop("checked", false);
			$(".select_result > span").remove();
			
		});
		
		/* 검색하기 버튼 클릭 시  */
		$("#searchBtn").on("click", function() {
			alert("!!!");
			var checkboxValues = [];
			var checkboxParentValues = [];
			var frm = $("#search_panel_form");
		    $("input[name=depth_category_chk]:checked").each(function(i) {
		    	var chkParent = $(this).parents('div').attr('id');
				var chkParent_name = $("#"+chkParent+"_btn").text();
				
				alert(chkParent_name);
				
		        checkboxValues.push($(this).val());
		        checkboxParentValues.push(chkParent_name);
		    });
		    alert(checkboxValues);
		    $("#checkboxResult").val(checkboxValues);
		    $("#checkboxParentResult").val(checkboxParentValues);
		    frm.submit();
		});
		
		$(".tabOn > a").append("<span>(1,508건)</span>");
		          
		$(".tabArea > li").removeClass('tabOn');
		var keyCode = $("#keyCode").val();
		if(keyCode == 1 || keyCode == "") {
			$("#allTab").attr("class","tabOn");		
		} else if(keyCode == 2) {
			$("#fulltimeTab").attr("class","tabOn");
		} else if(keyCode == 3) {
			$("#contractWorkerTab").attr("class","tabOn");
		} else if(keyCode == 4) {
			$("#internshipTab").attr("class","tabOn");
		} else if(keyCode == 5) {
			$("#studentTab").attr("class","tabOn");
		} 
		
		/* 채용공고 리스트 탭 클릭 시  */
		$(".tabArea > li").on("click", function() {
			$(".tabOn > a > span").remove();
			$(".tabArea > li").removeClass('tabOn');
			$(this).attr("class","tabOn"); 
            var flag = $(this).text();
            $(".tabOn > a").append("<span>(1,508건)</span>");
            alert(flag);
            location.href = "empinfoSearch.unicol?flag=" + flag;
            
		});
		
		// 채용공고 리스트 체크박스 클릭 시
		var enochk = [];
		$(".enochk").on("click", function() {
			/* $("input[name=enochk]:checked").each(function(i) {
		    	enochk.push($(this).val());
			});			 */
			if($("input[name=enochk]:checked"))
			enochk.push($(this).val());
			alert(enochk);
		});
		
		/* $('#form1 input[name=check1]'').prop('checked', true) */
		
		
		//스크랩 버튼 클릭 시
		$("#scrap_btn").on("click", function() {
			var loginSession = $("#loginsession").val();
			alert("loginSession : " + loginSession);
			if(loginSession == "") {
				$(".loginMsg").css("display","block");
        		$("#myModal").css("display","block");	
			} else {
				alert("enochk :" + enochk);
				
				$.ajax({
					//서블릿이 어디로 갈건지 
					url: "mypage.unicol",
					type: "POST",
					dataType: "json",
					data: "ehochk=" + enochk,
					success: function(data) {
						if(data.flag == "0") {
							
						} else {
							
						}
					},
					error: function() {
						alert("System Error!!!");
					}
				});
				
			}
		});
	});
</script>

<body>
	<div id="jobListContainer">
	<input type="hidden" id="checkboxValues" name="checkboxValues">
	<input type="hidden" id="keyCode" value="${keyCode}">
	<input type="hidden" id="loginsession" value="${sessionScope.loginUser.mid}">    
		<div id="inner_jogList">
			<div class="jogList_content">
				<div id="wrap_title">
					<h1 id="jobTitle">직업별(직종)</h1>
					<div id="searchKeyword_job">
						<input type="text" placeholder="직종을 검색하세요">
					</div>
				</div>
	
				<!-- 검색 카테고리(직종별 분류)  -->
				<form action="empinfoSearch.unicol" id="search_panel_form" name="search_panel_form" method="get">
				<input type="hidden" value="" id="checkboxResult" name="checkboxResult">
				<input type="hidden" value="" id="checkboxParentResult" name="checkboxParentResult">
					<div id="searchMain_wrap">
						 <ul class="searchCategory searchMain_category">
	                         <li><a href="#" class="selected" id="mg_Office_btn">경영·사무</a></li>
	                         <li><a href="#" id="sales_customer_btn">영업·고객상담</a></li>
	                         <li><a href="#" id="">IT·인터넷</a></li>
	                         <li><a href="#">디자인</a></li>
	                         <li><a href="#">서비스</a></li>
	                         <li><a href="#">전문직</a></li>
	                         <li><a href="#">의료</a></li>
                   		 </ul>
                   		 
                   		 <!-- 경영 · 사무  -->
                   		 <div class="subBox_wrap" id="mg_Office">
	                         <div class="sub_box">
	                             <ul class="subBox_category">
	                                   <li id="first_subcat"><a id="planning_Strategy_Management_btn" href="#">기획·전략·경영</a><em class="txt_count">(1,899)</em></li>
	                                   <li><a id="marketing_Advertising_Analysis_btn" href="#">마케팅·광고분석</a><em class="txt_count">(4,277)</em></li>
	                                   <li><a href="#">홍보·PR·사보</a><em class="txt_count">(1,899)</em></li>
	                                   <li><a href="#">경리·출납·결산</a><em class="txt_count">(1,899)</em></li>
	                                   <li><a href="#">회계·재무·세무·IR</a><em class="txt_count">(1,899)</em></li>
	                                   <li><a href="#">총무·법무·사무</a><em class="txt_count">(1,899)</em></li>
	                                   <li><a href="#">비서·안내·수행원</a><em class="txt_count">(1,899)</em></li>
	                                   <li><a href="#">인사·교육·노무</a><em class="txt_count">(1,899)</em></li>
	                                   <li><a href="#">사무보조·문서작성</a><em class="txt_count">(1,899)</em></li>
	                                   <li><a href="#">전시·컨벤션·세미나</a><em class="txt_count">(1,899)</em></li>
	                             </ul>
	                         </div>
	                         
	                         <!-- 경영 · 사무 > 기획·전략·경영-->
	                         <div class="sub_depth_box" id="planning_Strategy_Management">
	                             <ul class="subBox_depth_category">
	                              <li><label for="all"><input type="checkbox" class="depth_category_chk" id="all" name="depth_category_chk" value="전체"><span class="txt_check txt_point">전체</span></label></li>
	                              <li><label for="cat_key101"><input type="checkbox" class="depth_category_chk" id="cat_key101" name="depth_category_chk" value="기획"><span class="txt_check">기획</span></label></li>
	                              <li><label for="cat_key102"><input type="checkbox" class="depth_category_chk" id="cat_key102" name="depth_category_chk" value="전략기획"><span class="txt_check">전략기획</span></label></li>
	                              <li><label for="cat_key103"><input type="checkbox" class="depth_category_chk" id="cat_key103" name="depth_category_chk" value="사업기획"><span class="txt_check">사업기획</span></label></li>
	                              <li><label for="cat_key104"><input type="checkbox" class="depth_category_chk" id="cat_key104" name="depth_category_chk" value="사업제휴"><span class="txt_check">사업제휴</span></label></li>
	                              <li><label for="cat_key105"><input type="checkbox" class="depth_category_chk" id="cat_key105" name="depth_category_chk" value="타당성분석"><span class="txt_check">타당성분석</span></label></li>
	                              <li><label for="cat_key106"><input type="checkbox" class="depth_category_chk" id="cat_key106" name="depth_category_chk" value="MBA출신"><span class="txt_check">MBA출신</span></label></li>
	                              <li><label for="cat_key107"><input type="checkbox" class="depth_category_chk" id="cat_key107" name="depth_category_chk" value="경영기획"><span class="txt_check">경영기획</span></label></li>
	                              <li><label for="cat_key108"><input type="checkbox" class="depth_category_chk" id="cat_key108" name="depth_category_chk" value="조직관리"><span class="txt_check">조직관리</span></label></li>
	                              <li><label for="cat_key109"><input type="checkbox" class="depth_category_chk" id="cat_key109" name="depth_category_chk" value="변화관리"><span class="txt_check">변화관리</span></label></li>
	                              <li><label for="cat_key1010"><input type="checkbox" class="depth_category_chk" id="cat_key1010" name="depth_category_chk" value="서비스기획"><span class="txt_check">서비스기획</span></label></li>
	                              <li><label for="cat_key1011"><input type="checkbox" class="depth_category_chk" id="cat_key1011" name="depth_category_chk" value="경영혁신·PI"><span class="txt_check">경영혁신·PI</span></label></li>
	                              <li><label for="cat_key1012"><input type="checkbox" class="depth_category_chk" id="cat_key1012" name="depth_category_chk" value="출판기획"><span class="txt_check">출판기획</span></label></li>
	                              <li><label for="cat_key1013"><input type="checkbox" class="depth_category_chk" id="cat_key1013" name="depth_category_chk" value="인수·합병"><span class="txt_check">인수·합병</span></label></li>
	                              <li><label for="cat_key1014"><input type="checkbox" class="depth_category_chk" id="cat_key1014" name="depth_category_chk" value="신규사업·BD"><span class="txt_check">신규사업·BD</span></label></li>
	                              <li><label for="cat_key1015"><input type="checkbox" class="depth_category_chk" id="cat_key1015" name="depth_category_chk" value="CEO"><span class="txt_check">CEO</span></label></li>
	                              <li><label for="cat_key1016"><input type="checkbox" class="depth_category_chk" id="cat_key1016" name="depth_category_chk" value="COO"><span class="txt_check">COO</span></label></li>
	                              <li><label for="cat_key1017"><input type="checkbox" class="depth_category_chk" id="cat_key1017" name="depth_category_chk" value="기획조사"><span class="txt_check">기획조사</span></label></li>
	                             </ul>
                             </div>
                             
                             <!-- 경영 · 사무 > 마케팅·광고·분석  -->
                             <div class="sub_depth_box" id="marketing_Advertising_Analysis">
	                             <ul class="subBox_depth_category">
	                              <li><label for="all"><input type="checkbox" class="depth_category_chk" id="all" name="depth_category_chk" value="전체"><span class="txt_check txt_point">전체</span></label></li>
	                              <li><label for="cat_key101"><input type="checkbox" class="depth_category_chk" id="cat_key101" name="depth_category_chk" value="마케팅전략·기획"><span class="txt_check">마케팅전략·기획</span></label></li>
	                              <li><label for="cat_key102"><input type="checkbox" class="depth_category_chk" id="cat_key102" name="depth_category_chk" value="시장조사·분석"><span class="txt_check">시장조사·분석</span></label></li>
	                              <li><label for="cat_key103"><input type="checkbox" class="depth_category_chk" id="cat_key103" name="depth_category_chk" value="BM·브랜드매니저"><span class="txt_check">BM·브랜드매니저</span></label></li>
	                              <li><label for="cat_key104"><input type="checkbox" class="depth_category_chk" id="cat_key104" name="depth_category_chk" value="프로모션"><span class="txt_check">프로모션</span></label></li>
	                              <li><label for="cat_key105"><input type="checkbox" class="depth_category_chk" id="cat_key105" name="depth_category_chk" value="광고"><span class="txt_check">광고</span></label></li>
	                              <li><label for="cat_key106"><input type="checkbox" class="depth_category_chk" id="cat_key106" name="depth_category_chk" value="라이센싱"><span class="txt_check">라이센싱</span></label></li>
	                              <li><label for="cat_key107"><input type="checkbox" class="depth_category_chk" id="cat_key107" name="depth_category_chk" value="CRM"><span class="txt_check">CRM</span></label></li>
	                              <li><label for="cat_key108"><input type="checkbox" class="depth_category_chk" id="cat_key108" name="depth_category_chk" value="스포츠마케팅"><span class="txt_check">스포츠마케팅</span></label></li>
	                              <li><label for="cat_key109"><input type="checkbox" class="depth_category_chk" id="cat_key109" name="depth_category_chk" value="온라인마케팅"><span class="txt_check">온라인마케팅</span></label></li>
	                              <li><label for="cat_key1010"><input type="checkbox" class="depth_category_chk" id="cat_key1010" name="depth_category_chk" value="해외마케팅"><span class="txt_check">해외마케팅</span></label></li>
	                              <li><label for="cat_key1011"><input type="checkbox" class="depth_category_chk" id="cat_key1011" name="depth_category_chk" value="입소문·바이럴"><span class="txt_check">입소문·바이럴</span></label></li>
	                              <li><label for="cat_key1012"><input type="checkbox" class="depth_category_chk" id="cat_key1012" name="depth_category_chk" value="브랜드네이밍"><span class="txt_check">브랜드네이밍</span></label></li>
	                              <li><label for="cat_key1013"><input type="checkbox" class="depth_category_chk" id="cat_key1013" name="depth_category_chk" value="설문·리서치"><span class="txt_check">설문·리서치</span></label></li>
	                              <li><label for="cat_key1014"><input type="checkbox" class="depth_category_chk" id="cat_key1014" name="depth_category_chk" value="그래프·도표"><span class="txt_check">그래프·도표</span></label></li>
	                              <li><label for="cat_key1015"><input type="checkbox" class="depth_category_chk" id="cat_key1015" name="depth_category_chk" value="미디어플래닝"><span class="txt_check">미디어플래닝</span></label></li>
	                              <li><label for="cat_key1016"><input type="checkbox" class="depth_category_chk" id="cat_key1016" name="depth_category_chk" value="매체분석 구매"><span class="txt_check">매체분석 구매</span></label></li>
	                              <li><label for="cat_key1017"><input type="checkbox" class="depth_category_chk" id="cat_key1017" name="depth_category_chk" value="CMO"><span class="txt_check">CMO</span></label></li>
	                              <li><label for="cat_key1018"><input type="checkbox" class="depth_category_chk" id="cat_key1018" name="depth_category_chk" value="광고기획"><span class="txt_check">광고기획</span></label></li>
	                              <li><label for="cat_key1019"><input type="checkbox" class="depth_category_chk" id="cat_key1019" name="depth_category_chk" value="국제회의"><span class="txt_check">국제회의</span></label></li>
	                              <li><label for="cat_key1020"><input type="checkbox" class="depth_category_chk" id="cat_key1020" name="depth_category_chk" value="업무제휴"><span class="txt_check">업무제휴</span></label></li>
	                              <li><label for="cat_key1021"><input type="checkbox" class="depth_category_chk" id="cat_key1021" name="depth_category_chk" value="전시"><span class="txt_check">전시</span></label></li>
	                              <li><label for="cat_key1022"><input type="checkbox" class="depth_category_chk" id="cat_key1022" name="depth_category_chk" value="판촉"><span class="txt_check">판촉</span></label></li>
	                              <li><label for="cat_key1023"><input type="checkbox" class="depth_category_chk" id="cat_key1023" name="depth_category_chk" value="키워드광고"><span class="txt_check">키워드광고</span></label></li>
	                             </ul>
                             </div>
                         </div>
                         
                         <!-- 영업 · 고객상담  -->
                         <div class="subBox_wrap" id="sales_customer">
	                         <div class="sub_box">
	                             <ul class="subBox_category">
	                                   <li><a href="#">일반영업<em class="txt_count">(1,899)</em></a></li>
	                                   <li><a href="#">영업기획·관리·지원<em class="txt_count">(4,277)</em></a></li>
	                                   <li><a href="#">기술영업<em class="txt_count">(1,899)</em></a></li>
	                                   <li><a href="#">IT·솔루션영업<em class="txt_count">(1,899)</em></a></li>
	                                   <li><a href="#">광고영업<em class="txt_count">(1,899)</em></a></li>
	                                   <li><a href="#">금융·보험영업<em class="txt_count">(1,899)</em></a></li>
	                                   <li><a href="#">판매·매장관리<em class="txt_count">(1,899)</em></a></li>
	                                   <li><a href="#">TM·아웃바운드<em class="txt_count">(1,899)</em></a></li>
	                                   <li><a href="#">고객센터·CS<em class="txt_count">(1,899)</em></a></li>
	                                   <li><a href="#">QA·CS강사·수퍼바이저<em class="txt_count">(1,899)</em></a></li>
	                             </ul>
	                         </div>
	                         
	                         <div class="sub_depth_box" id="">
	                             <ul class="subBox_depth_category">
	                              <li><label for="all"><input type="checkbox" class="depth_category_chk" id="all" name="depth_category_chk" value="전체"><span class="txt_check txt_point">전체</span></label></li>
	                              <li><label for="cat_key101"><input type="checkbox" class="depth_category_chk" id="cat_key101" name="depth_category_chk" value="제약영업"><span class="txt_check">제약영업</span></label></li>
	                              <li><label for="cat_key102"><input type="checkbox" class="depth_category_chk" id="cat_key102" name="depth_category_chk" value="자동차영업"><span class="txt_check">자동차영업</span></label></li>
	                              <li><label for="cat_key103"><input type="checkbox" class="depth_category_chk" id="cat_key103" name="depth_category_chk" value="일반영업"><span class="txt_check">일반영업</span></label></li>
	                              <li><label for="cat_key104"><input type="checkbox" class="depth_category_chk" id="cat_key104" name="depth_category_chk" value="화장품영업"><span class="txt_check">화장품영업</span></label></li>
	                              <li><label for="cat_key105"><input type="checkbox" class="depth_category_chk" id="cat_key105" name="depth_category_chk" value="납품영업"><span class="txt_check">납품영업</span></label></li>
	                              <li><label for="cat_key106"><input type="checkbox" class="depth_category_chk" id="cat_key106" name="depth_category_chk" value="중고차딜러"><span class="txt_check">중고차딜러</span></label></li>
	                              <li><label for="cat_key107"><input type="checkbox" class="depth_category_chk" id="cat_key107" name="depth_category_chk" value="주류영업"><span class="txt_check">주류영업</span></label></li>
	                              <li><label for="cat_key108"><input type="checkbox" class="depth_category_chk" id="cat_key108" name="depth_category_chk" value="식품·음료영업"><span class="txt_check">식품·음료영업</span></label></li>
	                              <li><label for="cat_key109"><input type="checkbox" class="depth_category_chk" id="cat_key109" name="depth_category_chk" value="부동산영업"><span class="txt_check">부동산영업</span></label></li>
	                              <li><label for="cat_key1010"><input type="checkbox" class="depth_category_chk" id="cat_key1010" name="depth_category_chk" value="가맹정영업"><span class="txt_check">가맹정영업</span></label></li>
	                              <li><label for="cat_key1011"><input type="checkbox" class="depth_category_chk" id="cat_key1011" name="depth_category_chk" value="핸드폰영업"><span class="txt_check">핸드폰영업</span></label></li>
	                              <li><label for="cat_key1012"><input type="checkbox" class="depth_category_chk" id="cat_key1012" name="depth_category_chk" value="상조·장례영업"><span class="txt_check">상조·장례영업</span></label></li>
	                              <li><label for="cat_key1013"><input type="checkbox" class="depth_category_chk" id="cat_key1013" name="depth_category_chk" value="법인영업"><span class="txt_check">법인영업</span></label></li>
	                              <li><label for="cat_key1014"><input type="checkbox" class="depth_category_chk" id="cat_key1014" name="depth_category_chk" value="해외영업"><span class="txt_check">해외영업</span></label></li>
	                             </ul>
                             </div>
                         </div>
                         
                         
                         <ul class="searchCategory searchMainSecond_category">
	                         <li><a href="#">생산·제조</a></li>
	                         <li><a href="#">건설</a></li>
	                         <li><a href="#">유통·무역</a></li>
	                         <li><a href="#">미디어</a></li>
	                         <li><a href="#">교육</a></li>
	                         <li><a href="#">특수계층·공공</a></li>
	                         <li><a id="emptyCategory" href="#">empty</a></li>
                         </ul>
					</div>
				</form>
				
				<!-- 상세 검색 펼치기  -->
				<div id="searchSpread_wrap">
                	<a id="searchSpread" href="#">상세검색 펼치기▽</a>
                </div>

				<!-- 선택 검색 영역  -->
				<div id="search_preview">
					<div id="searchTotal_result">
						<p>검색결과</p>
						<strong id="searchTotal_all">전체</strong>
					</div>
					<div id="searchSelect_result">
						<ul class="result_guide">
							<li>선택조건을 모아, 검색결과 건수를 미리 볼 수 있습니다.</li>
							<li>선택하지 않은 조건은 <span>'전체'</span> 로 검색됩니다.
							</li>
						</ul>
						<div class="select_result">
						</div>
						<div id="init_wrap">
							<a id="select_reset" href="#">선택 초기화</a>
						</div>
					</div>
					<div id="result_btn">
						<a id="searchBtn">검색하기</a>
					</div>
				</div>
				
				                  
                <!-- 채용공고 리스트  -->  
                <div id="recruit_list">
                      <ul class="tabArea">
                            <li class="tabOn" id="allTab"><a>전체</a></li>
                            <li id="fulltimeTab"><a>정규직</a></li>
                            <li id="contractWorkerTab"><a>계약직</a></li>
                            <li id="internshipTab"><a>인턴직</a></li>
                            <li id="studentTab"><a>교육생</a></li>
                      </ul>
                      <div class="listArea">
                            <div id="list_info">
                                  <select class="infoSelect">
                                        <option>관련도순</option>
                                        <option>수정일순</option>
                                        <option>최근 등록일순</option>
                                        <option>마감임박순</option>
                                        <option>지원자순</option>
                                  </select>
                                  
                                  <a id="scrap_btn" href="#">스크랩</a>
                                  <a id="favorit_btn" href="#">관심기업</a>
                                  
                                  <div id="applyArea">
                                        <a id="apply_btn" href="#">즉시지원만 보기</a>
                                  </div>
                            </div>      
                      </div>
                      
                      <table class="recruit_board">
                            <colgroup>
                                  <col width="34px">
                                  <col width="18%">
                                  <col width="*">
                                  <col width="9%">
                                  <col width="14%">
                                  <col width="10%">
                            </colgroup>
                      
                            <tr>
                                  <th class="check_list">
                                        <label for="chk_all">
                                              <input type="checkbox">
                                        </label>
                                  </th>
                                  <th>기업명</th>
                                  <th>제목</th>
                                  <th>지원자격</th>
                                  <th>근무조건</th>
                                  <th>마감일·등록일</th>
                            </tr>
                            
                            
                            <c:forEach items="${searchList}" var="empInfoDto"> 
                                  <tr>
                                        <td>
                                              <label class="chk_recruit">
                                                    <input class="enochk" name="enochk" type="checkbox" value="${empInfoDto.eno}">
                                              </label>
                                        </td>
                                        <td class="company_name">
                                              <a href="#">${empInfoDto.companyName}</a>
                                        </td>
                                        <td class="notification_info">
                                              <div class="job_title">
                                                    <a href="${empInfoDto.href}">
                                                          <span>${empInfoDto.title}</span>
                                                    </a>
                                              </div>
                                              <p class="job_sector">
                                                    <span>${empInfoDto.subclass}</span>
                                              </p>
                                        </td>
                                        <td class="recruit_condition">
                                              <p class="careerApply">${empInfoDto.career}</p>
                                              <p class="education">${empInfoDto.education}</p>
                                        </td>
                                        
                                        <td class="working_condition">
                                              <p class="employment_type">${empInfoDto.employmentType}</p>
                                              <p class="work_place">${empInfoDto.work_place}</p>
                                        </td>
                                        
                                        <td class="deadline_info">
                                              <p class="deadline_btn"><a href="#">즉시지원</a></p>
                                              <p class="deadline_date">
                                                    ~07/02(월)
                                                    <span class="reg_date">(4일전등록)</span>
                                              </p>
                                        </td>
                                  </tr> 
                            </c:forEach>
                      </table>
                      
                      <div id="jobListpaginate">
	                      <ol id="paginate_ol">
	                            <c:if test="${EmpInfoPageMaker.prev}">
	                                  <li>
	                                  <a href="joblist.unicol?page=${EmpInfoPageMaker.startPage - 1}">&laquo;</a>
	                                  </li>
	                            </c:if>
	                            
	                            <c:forEach begin="${EmpInfoPageMaker.startPage}" end="${EmpInfoPageMaker.endPage}" var="idx">
	                                  <li <c:out value="${EmpInfoPageMaker.empInfoCriDto.page == idx? 'class=active':''}"/>>
	                                        <a href="joblist.unicol?page=${idx}">${idx}</a></li>
	                            </c:forEach>
	                            
	                            <c:if test="${pageMaker.next}">
	                                  <li>
	                                  <a href="joblist.unicol?page=${pageMaker.endPage + 1}">&raquo;</a>
	                            </li>
	                            </c:if>
	                      </ol>
                	</div>
                	
                </div>
			</div>
		</div>
	</div>
</body>
<%@include file="../include/footer.jsp"%>
</html>