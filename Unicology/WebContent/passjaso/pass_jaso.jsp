<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/header.jsp" %>    
    
<!-- jstl태그 사용 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
    
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	* {
		margin: 0;
		padding: 0;
		font-size: 12px;
	}
	a {
		font-size: 12px;
		color: black;
		text-decoration: none;
	}
	span {
		letter-spacing: -1px;
	}
	#passJaso_Wrap {
		width: 960px;
		height: 1424px;
		margin: 50px auto 100px auto;
	}
	#passJaso_Area{
		width: 960px;
		margin: 0 auto;
		position: absolute;
	}
	#passJaso_Head_Wrap {
		position: absolute;
		width: 100%;
		top: 64px;
		height: 30px;
		line-height: 30px;
		
	}
	#passJaso_Contents_Wrap {
		margin-top: 10px;
		box-shadow: 0px 0px 5px #d8d8d8;
		padding: 60px 0 0 0;
		border-top: 1px solid #444;
	}
	#passJaso_Title_Fix {
		border-top: 1px  solid #ccc;
		background-color: #f8f8f8;
	}
	.passJaso_Title_View {
		display:inline-block; 
		height: 30px;
		color: #888;
		letter-spacing: -1px;
		line-height: 30px;
		text-align: center;
		vertical-align: middle;
	}
	#passJaso_infoN {
		width: 70px;
	}
	#passJaso_comN {
		width: 190px;
	}
	#passJaso_title {
		width: 507px;
	}
	#passJaso_supportingField {
		width: 180px;
	}
	.passJaso_Content_Fix {
		height: 60px;
		border-top: 1px solid #ccc;
	}
	.passJaso_Content_View {
		display: inline-block;
		vertical-align: top;
		padding: 10px;
	}
	.passJaso_Content_infoN {
		padding: 0;
		width: 70px;
		height: 60px;
		line-height: 60px;
		text-align: center;
	}
	.passJaso_Content_comN {
		width: 170px;
		height: 40px;
		line-height: 40px;
		text-align: center;
	}
	.passJaso_Content_title {
		display: inline-block;
		width: 487px;
		height: 40px;
		line-height: 40px;
	}
	.passJaso_Content_title a {
		letter-spacing: -2px;
		font-size: 13px;
	}
	.passJaso_Content_title a:hover {
		color: #6495ed;
	}
	.passJaso_Content_supportingField {
		display: inline-block;
		width: 160px;
		height: 40px;
		padding: 10px;
		line-height: 40px;
		text-align: center;
	}
	.pagination {
		margin-top: 10px;
	    text-align: center;
	    height: 32px;
	}
	.pagination a {
		display: inline-block;
	    color: black;
	    padding: 8px 16px;
	    text-decoration: none;
	}
	#passJaso_Option {
		display: inline-block;
		padding: 0 17px 0 12px;
		width: 190px;
		height: 34px;
		border: 1px solid #ddd;
		box-sizing: border-box;
		color: #555;
		font-size: 13px;
		letter-spacing: -2px;
		line-height: 30px;
		background: url("image/passjaso_img/passjaso_btn.png") no-repeat 170px 13px;
		background-size: 8px;
		cursor: pointer;
	}
	#passJaso_Head_Area {
		display: inline-block;
		float: right;
		padding-right: 10px;
	}
	#passJaso_Search {
		padding: 0 12px;
		width: 127px;
		height: 32px;
		border: 1px solid #dadbdd;
		font-size: 13px;
		letter-spacing: -1px;
		line-height: 32px;
		vertical-align: top;
		background: #fff;
		outline: none;
	}
	#search_btn {
		display: inline-block;
		background-color: #5e75ee;
		border: 1px solid #5e75ee;
		height: 32px;
		width: 50px;
		color: #fff;
		font-size: 13px;
		text-align: center;
		position: absolute;
		top: 0px;
		right: 0px;
		outline: none;
	}
	#passJaso_Input_Area {
		display: inline-block;
		width: 205px;
		position: relative;
		vertical-align: top;
	}
	#passJaso_Head_Title {
		cursor: pointer;
		display: inline-block;
		color: #444;
		font-size: 32px;
		font-weight: normal;
		letter-spacing: -4px;
		line-height: 36px;
		vertical-align: top;
	}
	#passJaso_Head_Share {
		margin: 0 2px 0 8px;
		color: #dbdbdb;
		font-size: 15px;
		line-height: 40px;
		vertical-align: top;
	}
	#passJaso_Cnt {
		font-size: 22px;
		color: #ff6410;
		font-weight: normal;
		line-height: 40px;
		vertical-align: top;
	}
	#passJaso_Cnt_Fix {
		font-size: 20px;
		color: #444;
		font-weight: normal;
		line-height: 40px;
		vertical-align: top;
	}
	#select_List {
		display: none;
		overflow-y:scroll;
		position: absolute; 
		width: 188px;
		top: 33px;
		z-index: 1;
		height: 313px;
		border: 1px solid #dadbdd;
		background-color: #fff;
	}
	#select_List a {
		display: block;
		overflow: hidden;
		padding: 0 12px;
		width: 147px;
		height: 30px;
		color: #666;
		font-size: 13px;
		letter-spacing: -1px;
		line-height: 30px;
		text-overflow: ellipsis;
		vertical-align: top;
	}
	.active {
		background-color: #5e75ee;
		color: white!important;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		var selectOption = $("#passjasoOption").val();
		
		if(selectOption != ""){
			$("#passJaso_Option").text(selectOption);
		} else {
			$("#passJaso_Option").text("지원분야");
		}
	});
	
	$(document).on("click", "#passJaso_Option", function(){
		$("#select_List").css("display", "block");
	});
	$(document).on("click", ".select_Option", function(){
		
		var searchKeyword = $("#passJaso_Search").val();
		var selectOption = $(this).text();
		
		$("#passJaso_Option").text(selectOption);
		$("#select_List").css("display", "none");
		if(selectOption == "C#"){
			selectOption = "C+%23";
		} else if (selectOption == "C++") {
			selectOption = "C+%2B+%2B";
		}
		location.href="passjasooption.unicol?selectOption=" + selectOption + "&searchKeyword=" + searchKeyword;
	});
	
	$(document).on("click", "#search_btn", function(){
		var searchKeyword = $("#passJaso_Search").val();
		
		var selectOption = $("#passJaso_Option").text();
			
		if(selectOption == "C#"){
			selectOption = "C+%23";
		} else if (selectOption == "C++") {
			selectOption = "C+%2B+%2B";
		}
		location.href="passjasooption.unicol?selectOption=" + selectOption + "&searchKeyword=" + searchKeyword;
	
	});
	
	$('html').click(function(e) {
		if(!$(e.target).hasClass("#select_List")) {
			$("#select_List").css("display", "none");
		} 
	}); 

	$(document).on("click", "#passJaso_Head_Title", function(){
		location.href="passjaso.unicol";
	});
</script>
</head>
<body>
	<input type="hidden" value="${passJasoPageMaker.criDto.selectOption}" id="passjasoOption">
	<div id="passJaso_Wrap">
		<div id="passJaso_Area">
			<div id="passJaso_Title_Wrap">
				<h1 id="passJaso_Head_Title">
					합격자소서 
					<span id="passJaso_Head_Share"> |</span>
					<span id="passJaso_Cnt">
						${passJasoPageMaker.totalCount}
					</span>
					<span id="passJaso_Cnt_Fix">건</span>
				</h1>
			</div>
			<div id="passJaso_Head_Wrap">
				<span id="passJaso_Head_Area">
					<span id="passJaso_Option">지원분야</span>
					<ul id="select_List">
						<li><a href="#" class="select_Option">지원분야</a></li>
						<li><a href="#" class="select_Option">공통</a></li>
						<li><a href="#" class="select_Option">카메라·조명·미술</a></li>
						<li><a href="#" class="select_Option">3D설계</a></li>
						<li><a href="#" class="select_Option">ABAP</a></li>
						<li><a href="#" class="select_Option">C#</a></li>
						<li><a href="#" class="select_Option">C++</a></li>
						<li><a href="#" class="select_Option">CFO</a></li>
						<li><a href="#" class="select_Option">CG</a></li>
						<li><a href="#" class="select_Option">CRM</a></li>
						<li><a href="#" class="select_Option">CTO</a></li>
						<li><a href="#" class="select_Option">DB2</a></li>
						<li><a href="#" class="select_Option">DBA</a></li>
						<li><a href="#" class="select_Option">DB·시스템</a></li>
						<li><a href="#" class="select_Option">ERP·시스템분석·설계</a></li>
						<li><a href="#" class="select_Option">FC</a></li>
						<li><a href="#" class="select_Option">HRD·HRM</a></li>
						<li><a href="#" class="select_Option">HTML·웹표준·UI개발</a></li>
						<li><a href="#" class="select_Option">HW(하드웨어)</a></li>
						<li><a href="#" class="select_Option">IT·디자인·컴퓨터교육</a></li>
						<li><a href="#" class="select_Option">Java</a></li>
						<li><a href="#" class="select_Option">Java·JSP</a></li>
						<li><a href="#" class="select_Option">MD</a></li>
						<li><a href="#" class="select_Option">MR·MD</a></li>
						<li><a href="#" class="select_Option">PB</a></li>
						<li><a href="#" class="select_Option">PD·연출</a></li>
						<li><a href="#" class="select_Option">Pro-C</a></li>
						<li><a href="#" class="select_Option">QAA·통화품질</a></li>
						<li><a href="#" class="select_Option">QA·CS강사·수퍼바이저</a></li>
						<li><a href="#" class="select_Option">R&D(연구개발)</a></li>
						<li><a href="#" class="select_Option">SCM</a></li>
						<li><a href="#" class="select_Option">SEM·SCM</a></li>
						<li><a href="#" class="select_Option">SQL</a></li>
						<li><a href="#" class="select_Option">SW 아카데미-CE/IM/전사직속</a></li>
						<li><a href="#" class="select_Option">SW 아카데미-DS</a></li>
						<li><a href="#" class="select_Option">SW(소프트웨어)</a></li>
						<li><a href="#" class="select_Option">VMD</a></li>
						<li><a href="#" class="select_Option">가맹점관리</a></li>
						<li><a href="#" class="select_Option">개인고객영업</a></li>
						<li><a href="#" class="select_Option">거래선개발</a></li>
						<li><a href="#" class="select_Option">건설</a></li>
						<li><a href="#" class="select_Option">건설안전</a></li>
						<li><a href="#" class="select_Option">건설자재</a></li>
						<li><a href="#" class="select_Option">건축·인테리어·설계</a></li>
						<li><a href="#" class="select_Option">건축설계</a></li>
						<li><a href="#" class="select_Option">건축설비</a></li>
						<li><a href="#" class="select_Option">건축시공</a></li>
						<li><a href="#" class="select_Option">게임·Game</a></li>
						<li><a href="#" class="select_Option">게임개발</a></li>
						<li><a href="#" class="select_Option">게임기획</a></li>
						<li><a href="#" class="select_Option">경영기획</a></li>
						<li><a href="#" class="select_Option">경영분석·컨설턴트</a></li>
						<li><a href="#" class="select_Option">경영지원</a></li>
						<li><a href="#" class="select_Option">고객관리</a></li>
						<li><a href="#" class="select_Option">고객센터·CS</a></li>
						<li><a href="#" class="select_Option">공연기획</a></li>
						<li><a href="#" class="select_Option">공정</a></li>
						<li><a href="#" class="select_Option">공정관리</a></li>
						<li><a href="#" class="select_Option">공정엔지니어</a></li>
						<li><a href="#" class="select_Option">공통(CE/IM/전사직속)-소프트웨어</a></li>
						<li><a href="#" class="select_Option">광고AE·기획</a></li>
						<li><a href="#" class="select_Option">광고·카피·CF</a></li>
						<li><a href="#" class="select_Option">광고영업</a></li>
						<li><a href="#" class="select_Option">광학</a></li>
						<li><a href="#" class="select_Option">광학기구</a></li>
						<li><a href="#" class="select_Option">교육(HRD)</a></li>
						<li><a href="#" class="select_Option">교육기획·교재</a></li>
						<li><a href="#" class="select_Option">교회사무·행정·관리</a></li>
						<li><a href="#" class="select_Option">구매·자재·재고</a></li>
						<li><a href="#" class="select_Option">구매관리</a></li>
						<li><a href="#" class="select_Option">국내영업</a></li>
						<li><a href="#" class="select_Option">그래픽디자인</a></li>
						<li><a href="#" class="select_Option">금속·금형</a></li>
						<li><a href="#" class="select_Option">금속·철강</a></li>
						<li><a href="#" class="select_Option">금융·보험영업</a></li>
						<li><a href="#" class="select_Option">금융사무</a></li>
						<li><a href="#" class="select_Option">금융상담</a></li>
						<li><a href="#" class="select_Option">금융영업</a></li>
						<li><a href="#" class="select_Option">금융자산관리</a></li>
						<li><a href="#" class="select_Option">금융자산관리사</a></li>
						<li><a href="#" class="select_Option">금형설계</a></li>
						<li><a href="#" class="select_Option">기계·기계설비</a></li>
						<li><a href="#" class="select_Option">기계·기구설계</a></li>
						<li><a href="#" class="select_Option">기계설치정비</a></li>
						<li><a href="#" class="select_Option">기술연구소</a></li>
						<li><a href="#" class="select_Option">기술영업</a></li>
						<li><a href="#" class="select_Option">기술영업(IT)</a></li>
						<li><a href="#" class="select_Option">기술영업(건설)</a></li>
						<li><a href="#" class="select_Option">기술지원</a></li>
						<li><a href="#" class="select_Option">기술직</a></li>
						<li><a href="#" class="select_Option">기술직강사</a></li>
						<li><a href="#" class="select_Option">기업금융</a></li>
						<li><a href="#" class="select_Option">기자</a></li>
						<li><a href="#" class="select_Option">기획·전략·경영</a></li>
						<li><a href="#" class="select_Option">기획조사</a></li>
						<li><a href="#" class="select_Option">납품·배송·택배</a></li>
						<li><a href="#" class="select_Option">네트워크관리</a></li>
						<li><a href="#" class="select_Option">네트워크엔지니어</a></li>
						<li><a href="#" class="select_Option">네트워크영업</a></li>
						<li><a href="#" class="select_Option">노인복지시설</a></li>
						<li><a href="#" class="select_Option">담보상담</a></li>
						<li><a href="#" class="select_Option">대기업생산직</a></li>
						<li><a href="#" class="select_Option">대리점·점포개발</a></li>
						<li><a href="#" class="select_Option">대출심사</a></li>
						<li><a href="#" class="select_Option">대학교수·행정직</a></li>
						<li><a href="#" class="select_Option">데이터베이스</a></li>
						<li><a href="#" class="select_Option">디자인기타</a></li>
						<li><a href="#" class="select_Option">리서치·모니터링</a></li>
						<li><a href="#" class="select_Option">리스크매니저</a></li>
						<li><a href="#" class="select_Option">리조트</a></li>
						<li><a href="#" class="select_Option">마케팅·광고·분석</a></li>
						<li><a href="#" class="select_Option">마케팅기획</a></li>
						<li><a href="#" class="select_Option">마케팅전략</a></li>
						<li><a href="#" class="select_Option">마케팅전략·기획</a></li>
						<li><a href="#" class="select_Option">매니져</a></li>
						<li><a href="#" class="select_Option">매장시설관리</a></li>
						<li><a href="#" class="select_Option">매출분석·관리</a></li>
						<li><a href="#" class="select_Option">모델링</a></li>
						<li><a href="#" class="select_Option">모바일통신</a></li>
						<li><a href="#" class="select_Option">무선통신</a></li>
						<li><a href="#" class="select_Option">문화·예술</a></li>
						<li><a href="#" class="select_Option">물류·유통·운송</a></li>
						<li><a href="#" class="select_Option">물류관리</a></li>
						<li><a href="#" class="select_Option">바이오·제약·식품</a></li>
						<li><a href="#" class="select_Option">반도체·디스플레이·LCD</a></li>
						<li><a href="#" class="select_Option">발전</a></li>
						<li><a href="#" class="select_Option">발전기</a></li>
						<li><a href="#" class="select_Option">방송기술</a></li>
						<li><a href="#" class="select_Option">방송기획</a></li>
						<li><a href="#" class="select_Option">방송연출·PD·감독</a></li>
						<li><a href="#" class="select_Option">배선</a></li>
						<li><a href="#" class="select_Option">법인영업</a></li>
						<li><a href="#" class="select_Option">병역특례</a></li>
						<li><a href="#" class="select_Option">보안·경호·안전</a></li>
						<li><a href="#" class="select_Option">보안관리</a></li>
						<li><a href="#" class="select_Option">보험계리</a></li>
						<li><a href="#" class="select_Option">보험계리사</a></li>
						<li><a href="#" class="select_Option">보험설계</a></li>
						<li><a href="#" class="select_Option">보험심사과</a></li>
						<li><a href="#" class="select_Option">보험회사</a></li>
						<li><a href="#" class="select_Option">본사·관리·전산</a></li>
						<li><a href="#" class="select_Option">부동산·개발·경매·분양</a></li>
						<li><a href="#" class="select_Option">부동산개발</a></li>
						<li><a href="#" class="select_Option">브랜드매니저</a></li>
						<li><a href="#" class="select_Option">비서·안내·수행원</a></li>
						<li><a href="#" class="select_Option">사무·원무·코디</a></li>
						<li><a href="#" class="select_Option">사무관리</a></li>
						<li><a href="#" class="select_Option">사무보조</a></li>
						<li><a href="#" class="select_Option">사무직</a></li>
						<li><a href="#" class="select_Option">사업기획</a></li>
						<li><a href="#" class="select_Option">사출</a></li>
						<li><a href="#" class="select_Option">사회복지·요양·봉사</a></li>
						<li><a href="#" class="select_Option">산업안전</a></li>
						<li><a href="#" class="select_Option">상품개발</a></li>
						<li><a href="#" class="select_Option">상품기획·MD</a></li>
						<li><a href="#" class="select_Option">상품기획·개발</a></li>
						<li><a href="#" class="select_Option">생명공학</a></li>
						<li><a href="#" class="select_Option">생산·제조·포장·조립</a></li>
						<li><a href="#" class="select_Option">생산관리·품질관리</a></li>
						<li><a href="#" class="select_Option">생산기술</a></li>
						<li><a href="#" class="select_Option">생산직</a></li>
						<li><a href="#" class="select_Option">서버·네트워크·보안</a></li>
						<li><a href="#" class="select_Option">서버관리자</a></li>
						<li><a href="#" class="select_Option">서비스기획</a></li>
						<li><a href="#" class="select_Option">설계·CAD·CAM</a></li>
						<li><a href="#" class="select_Option">설문·통계·리서치</a></li>
						<li><a href="#" class="select_Option">설비공사</a></li>
						<li><a href="#" class="select_Option">섬유·패션MD</a></li>
						<li><a href="#" class="select_Option">손해사정</a></li>
						<li><a href="#" class="select_Option">솔루션영업</a></li>
						<li><a href="#" class="select_Option">수의간호사</a></li>
						<li><a href="#" class="select_Option">수출입사무</a></li>
						<li><a href="#" class="select_Option">시각디자인</a></li>
						<li><a href="#" class="select_Option">시공·공사</a></li>
						<li><a href="#" class="select_Option">시설</a></li>
						<li><a href="#" class="select_Option">시스템설계</a></li>
						<li><a href="#" class="select_Option">시스템엔지니어</a></li>
						<li><a href="#" class="select_Option">시스템영업</a></li>
						<li><a href="#" class="select_Option">시스템운영</a></li>
						<li><a href="#" class="select_Option">시스템프로그래머</a></li>
						<li><a href="#" class="select_Option">시장조사·분석</a></li>
						<li><a href="#" class="select_Option">식품·음료영업</a></li>
						<li><a href="#" class="select_Option">식품영업</a></li>
						<li><a href="#" class="select_Option">안드로이드</a></li>
						<li><a href="#" class="select_Option">안전·품질·검사·관리</a></li>
						<li><a href="#" class="select_Option">여행·관광·항공</a></li>
						<li><a href="#" class="select_Option">연구·실험·기술</a></li>
						<li><a href="#" class="select_Option">연구관리</a></li>
						<li><a href="#" class="select_Option">연구소·R&D</a></li>
						<li><a href="#" class="select_Option">연구원</a></li>
						<li><a href="#" class="select_Option">연예·엔터테인먼트</a></li>
						<li><a href="#" class="select_Option">영업관리</a></li>
						<li><a href="#" class="select_Option">영업기획·관리·지원</a></li>
						<li><a href="#" class="select_Option">영업지원</a></li>
						<li><a href="#" class="select_Option">예약·발권</a></li>
						<li><a href="#" class="select_Option">외국어·번역·통역</a></li>
						<li><a href="#" class="select_Option">외국어·어학원</a></li>
						<li><a href="#" class="select_Option">외식·식음료</a></li>
						<li><a href="#" class="select_Option">요리·제빵사·영양사</a></li>
						<li><a href="#" class="select_Option">워드·문서작성</a></li>
						<li><a href="#" class="select_Option">원자력</a></li>
						<li><a href="#" class="select_Option">웨딩·행사·이벤트</a></li>
						<li><a href="#" class="select_Option">웹기획·웹마케팅·PM</a></li>
						<li><a href="#" class="select_Option">웹프로그래머</a></li>
						<li><a href="#" class="select_Option">유지보수</a></li>
						<li><a href="#" class="select_Option">유통관리</a></li>
						<li><a href="#" class="select_Option">은행</a></li>
						<li><a href="#" class="select_Option">응용프로그래머</a></li>
						<li><a href="#" class="select_Option">의료</a></li>
						<li><a href="#" class="select_Option">의류·패션·잡화디자인</a></li>
						<li><a href="#" class="select_Option">이동통신</a></li>
						<li><a href="#" class="select_Option">인사(HRM)</a></li>
						<li><a href="#" class="select_Option">인사·교육·노무</a></li>
						<li><a href="#" class="select_Option">인쇄·출판·편집</a></li>
						<li><a href="#" class="select_Option">인터넷·통신</a></li>
						<li><a href="#" class="select_Option">인프라</a></li>
						<li><a href="#" class="select_Option">일반사무</a></li>
						<li><a href="#" class="select_Option">일반영업</a></li>
						<li><a href="#" class="select_Option">임베디드</a></li>
						<li><a href="#" class="select_Option">자금</a></li>
						<li><a href="#" class="select_Option">자동차·조선설계</a></li>
						<li><a href="#" class="select_Option">자동차설계</a></li>
						<li><a href="#" class="select_Option">자동차영업</a></li>
						<li><a href="#" class="select_Option">자동차정비</a></li>
						<li><a href="#" class="select_Option">자동화설비영업</a></li>
						<li><a href="#" class="select_Option">자산관리</a></li>
						<li><a href="#" class="select_Option">자재관리</a></li>
						<li><a href="#" class="select_Option">자재구매</a></li>
						<li><a href="#" class="select_Option">재무회계</a></li>
						<li><a href="#" class="select_Option">전기·소방·통신·설비</a></li>
						<li><a href="#" class="select_Option">전기·전자</a></li>
						<li><a href="#" class="select_Option">전기·전자·제어</a></li>
						<li><a href="#" class="select_Option">전기·전자기기</a></li>
						<li><a href="#" class="select_Option">전기·전자회로</a></li>
						<li><a href="#" class="select_Option">전기계장</a></li>
						<li><a href="#" class="select_Option">전기공사</a></li>
						<li><a href="#" class="select_Option">전기기기</a></li>
						<li><a href="#" class="select_Option">전기기사</a></li>
						<li><a href="#" class="select_Option">전기기술</a></li>
						<li><a href="#" class="select_Option">전기배선</a></li>
						<li><a href="#" class="select_Option">전기설계</a></li>
						<li><a href="#" class="select_Option">전기설비</a></li>
						<li><a href="#" class="select_Option">전기안전</a></li>
						<li><a href="#" class="select_Option">전기회로</a></li>
						<li><a href="#" class="select_Option">전략기획</a></li>
						<li><a href="#" class="select_Option">전산전공</a></li>
						<li><a href="#" class="select_Option">전산직</a></li>
						<li><a href="#" class="select_Option">전시·공간디자인</a></li>
						<li><a href="#" class="select_Option">전자통신</a></li>
						<li><a href="#" class="select_Option">전자회로</a></li>
						<li><a href="#" class="select_Option">전장</a></li>
						<li><a href="#" class="select_Option">정보보안</a></li>
						<li><a href="#" class="select_Option">정보설계·IA</a></li>
						<li><a href="#" class="select_Option">정보통신·IT</a></li>
						<li><a href="#" class="select_Option">정비</a></li>
						<li><a href="#" class="select_Option">제약영업</a></li>
						<li><a href="#" class="select_Option">제품·산업디자인</a></li>
						<li><a href="#" class="select_Option">제품개발</a></li>
						<li><a href="#" class="select_Option">제품디자인</a></li>
						<li><a href="#" class="select_Option">제품시험</a></li>
						<li><a href="#" class="select_Option">제휴마케팅</a></li>
						<li><a href="#" class="select_Option">조사분석</a></li>
						<li><a href="#" class="select_Option">조선설계</a></li>
						<li><a href="#" class="select_Option">조직관리</a></li>
						<li><a href="#" class="select_Option">주류영업</a></li>
						<li><a href="#" class="select_Option">증권·투자·펀드·외환</a></li>
						<li><a href="#" class="select_Option">채권·보험·보상·심사</a></li>
						<li><a href="#" class="select_Option">채권관리</a></li>
						<li><a href="#" class="select_Option">총무·법무·사무</a></li>
						<li><a href="#" class="select_Option">출판·편집디자인</a></li>
						<li><a href="#" class="select_Option">카드영업</a></li>
						<li><a href="#" class="select_Option">캐피탈</a></li>
						<li><a href="#" class="select_Option">컨설팅</a></li>
						<li><a href="#" class="select_Option">컨텐츠·사이트운영</a></li>
						<li><a href="#" class="select_Option">콘텐츠개발</a></li>
						<li><a href="#" class="select_Option">콘텐츠운영관리</a></li>
						<li><a href="#" class="select_Option">택배·운송·물류</a></li>
						<li><a href="#" class="select_Option">테스트</a></li>
						<li><a href="#" class="select_Option">텔러</a></li>
						<li><a href="#" class="select_Option">토목·조경·도시·측량</a></li>
						<li><a href="#" class="select_Option">토목감리</a></li>
						<li><a href="#" class="select_Option">토목기사</a></li>
						<li><a href="#" class="select_Option">토목설계</a></li>
						<li><a href="#" class="select_Option">토목시공</a></li>
						<li><a href="#" class="select_Option">통계·데이터</a></li>
						<li><a href="#" class="select_Option">통신기술</a></li>
						<li><a href="#" class="select_Option">퇴직연금</a></li>
						<li><a href="#" class="select_Option">투자상담</a></li>
						<li><a href="#" class="select_Option">특수직</a></li>
						<li><a href="#" class="select_Option">판매·매장관리</a></li>
						<li><a href="#" class="select_Option">판매관리</a></li>
						<li><a href="#" class="select_Option">패션디자인</a></li>
						<li><a href="#" class="select_Option">포장기계</a></li>
						<li><a href="#" class="select_Option">품질보증</a></li>
						<li><a href="#" class="select_Option">프로그램</a></li>
						<li><a href="#" class="select_Option">프로모션</a></li>
						<li><a href="#" class="select_Option">프론트</a></li>
						<li><a href="#" class="select_Option">하드웨어·소프트웨어</a></li>
						<li><a href="#" class="select_Option">항공승무원</a></li>
						<li><a href="#" class="select_Option">해외마케팅</a></li>
						<li><a href="#" class="select_Option">해외무역</a></li>
						<li><a href="#" class="select_Option">해외영업·무역영업</a></li>
						<li><a href="#" class="select_Option">해운</a></li>
						<li><a href="#" class="select_Option">현장·시공·감리·공무</a></li>
						<li><a href="#" class="select_Option">현장관리</a></li>
						<li><a href="#" class="select_Option">호텔·카지노·콘도</a></li>
						<li><a href="#" class="select_Option">홍보·PR·사보</a></li>
						<li><a href="#" class="select_Option">화학·에너지</a></li>
						<li><a href="#" class="select_Option">환경·플랜트</a></li>
						<li><a href="#" class="select_Option">환경관리</a></li>
						<li><a href="#" class="select_Option">회계·재무·세무·IR</a></li>
						<li><a href="#" class="select_Option">회로설계</a></li>
					</ul>
					
					<span id="passJaso_Input_Area">
						<input type="text" name="passJaso_Search" id="passJaso_Search" placeholder="기업명을 입력하세요." value="${passJasoPageMaker.criDto.searchKeyword}">					
						<a href="#"  id="search_btn">검색</a>
					</span>
				</span>
			</div>
			<div id="passJaso_Contents_Wrap">
				<div id="passJaso_Title_Fix">
					<span id="passJaso_infoN" class="passJaso_Title_View">번호</span>
					<span id="passJaso_comN" class="passJaso_Title_View">기업명</span>
					<span id="passJaso_title" class="passJaso_Title_View">제목</span>
					<span id="passJaso_supportingField" class="passJaso_Title_View">지원분야</span>
				</div>
				<c:forEach items="${passJasoList}" var="list">
					<div class="passJaso_Content_Fix">
						<span class="passJaso_Content_View passJaso_Content_infoN">${list.pno}</span>
						<span class="passJaso_Content_View passJaso_Content_comN">
							<a href="#">${list.company}</a>
						</span>
						<span class="passJaso_Content_View passJaso_Content_title">
							<a href="${list.href}">${list.title}</a>
						</span>
						<span class="passJaso_Content_View passJaso_Content_supportingField">${list.supportingField}</span>
					</div>
				</c:forEach>
			</div>
			<div class="pagination">
				<c:if test="${passJasoPageMaker.prev}">
					<a href="passjaso.unicol?page=${passJasoPageMaker.startPage-1}">&laquo;</a>
				</c:if>
			 	<!-- ${pageMaker.startPage}값부터 ${pageMaker.endPage}값까지 반복-->
				<c:forEach begin="${passJasoPageMaker.startPage}" end="${passJasoPageMaker.endPage}" var="idx">
					<%-- <c:out value="${pageMaker.criDto.page == idx? 'class=active' : ' '}"/> --%><!-- li태그 필요 -->
					<c:if test="${flag == 0}">
						<a href="passjaso.unicol?page=${idx}"<c:out value="${passJasoPageMaker.criDto.page == idx? 'class=active' : ' '}"/>>${idx}</a>
					</c:if>
					<c:if test="${flag == 1}">
						<a href="passjasooption.unicol?page=${idx}&selectOption=${passJasoPageMaker.criDto.selectOption}"<c:out value="${passJasoPageMaker.criDto.page == idx? 'class=active' : ' '}"/>>${idx}</a>
					</c:if>	
				</c:forEach>
				<c:if test="${passJasoPageMaker.next}">
					<a href="passjaso.unicol?page=${passJasoPageMaker.endPage+1}">&raquo;</a>
				</c:if>
			</div>
		</div>
	</div>
</body>
</html>
<%@ include file="../include/footer.jsp" %>