<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body, ul{
		margin: 0;
		padding: 0;
	}
	
	ul{
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
	
	/* 컨텐츠 영역 */
	#inner_mypage {
		position: static;
		width: 1200px;
		min-height: 500px;
		margin: 0 auto;
	}
	
	/* 사이드 영역  */
	.aside_wrap {
		position: relative;
		float: left;
		width: 180px;
		/* margin-left는 헤더의 시작부분과 다시 맞출 것  */
		background-color: #fff;
		text-align: center;
		margin-top: 10px;
		padding: 5px;
		box-shadow: 0 1px 1px 1px rgba(0,0,0,0.12);
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
		box-shadow: 0 1px 1px 1px rgba(0,0,0,0.12);
		display: block;
		margin-top: 10px;
	}
	
	#desc {
		height: 39px;
		border-bottom: 1px solid #ebebeb;
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
		width: 193px;
		height: 55px;
		float: left;
		border-top: 1px solid #e6e6e6;
		border-right: 1px solid #e6e6e6;
		border-left: 1px solid #e6e6e6;
		text-align: center;
    	line-height: 55px;
	}
	
	.on {
		background: #fff;
		border-color: #888b9e;
		z-index: 2;
	}
	
	/* left side 메뉴 (이력서 관리 및 회원정보 수정) */
	#section_leftmenu {
		float: left;
	}
	
	
</style>
</head>
<body>
	<div id="mypageContainer">
		<div id="inner_mypage">
		
			<!-- 사이드 영역  -->
			<aside class="aside_wrap">
			<a href="#"><img id="preference_img" alt="" src="../image/mypage/preference.png"></a>
				<div class="profile_wrap">
					<img alt="" src="../image/mypage/user.png">
					<h2 id="h_name">박아영 님</h2>
					<a id="resume_register" href="#">내 이력서 등록</a>
				</div>
			
			
			<div id="section_leftmenu">
				<div class="leftmenu">
					<h2 class="leftmenu_title">이력서 관리</h2>
						<ul>
							<li>이력서 등록</li>
							<li>이력서 관리</li>
						</ul>
				</div>
			</div>
				
			</aside>
			
			<!--  -->
			<div id="summary_wrap">  
				<div class="dashboard">
					<ul class="active_list">
						<li>
							<a>
								<span class="doing">
									<em>0</em>
									/5
								</span>	
								<span>이력서</span>
							</a>
						</li>
						<li>
							<a>
								<span class="doing">
									<em>1</em>
								</span>
								<span>스크랩</span>
							</a>
						</li>
						<li>
							<a>
								<span class="doing">
									<em>3</em>
								</span>
								<span>관심 기업</span>
							</a>
						</li>
						
						<li>
							<span class="doing">
									<em>17</em>
									/200
								</span>	
								<span>최근 본 공고</span>
						</li>
					</ul>
				</div>
				
				<div id="recruit_Tab">
					<ul class="recruit_list_navigation">
						<li class="on"><a>지원 할 만한 공고</a></li>
						<li><a>최근 본 공고</a></li>
						<li><a>스크랩 공고</a></li>
						<li><a>맞춤채용정보</a></li>
					</ul>
				</div>
				
				<div id="recruit_summary">
					<div id="desc">
						<strong>마감임박!!</strong> 놓치면 후회해요.
					</div>
					<div id="summary_inner">
						<ul id="info_list">
							<li class="company_name">(주)우아한 형제들</li>
							<li class="recruit_name">[배달의민족]부문별 신입/경력 공채</li>
							<li class="recurit_sector">신입 · 경력 학력무관 서울전체 정규직, 계약직 </li>
						</ul>
					</div>
				</div>
				
				
			</div>	
		</div>
	</div>
</body>
<%@include file="../include/footer.jsp"%>
</html>