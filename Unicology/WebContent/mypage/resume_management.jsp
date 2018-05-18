<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
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
            box-shadow: 0 1px 1px 1px rgba(0,0,0,0.12);
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
      
      .info_date{
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
      box-shadow: 0 1px 1px 1px rgba(0,0,0,0.1);
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
	      box-shadow: 0 1px 1px 1px rgba(0,0,0,0.1);
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
      
      
      .resume_management_title > h3 {
	      font-size: 28px;
		  line-height: 36px;
		  color: #444;
		  font-family: "맑은 고딕",gulim,"돋움","dotum";
      }    
      
      .resume_guide > li {
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
      
      /* 자기소개서   */
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
      
      /* 회원정보 수정 */
      #memberInfo_modify_wrap {
          display: none;
          width: 780px;
	      min-height: 500px;
	      margin-left: 30px;
	      float: left;
	      
      }
      
      #memberInfo_modify_title_area {
      	  min-height: 45px;
	      height: auto;
	      padding-bottom: 49px;
      }
</style>
</head>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
      $(document).ready(function() {
    	  
	      $(".recruit_list_navigation li").on("click", function(){
	            $(".recruit_list_navigation li").removeClass('on');
	            $(this).attr("class","on");   
	      });
	      
	      // 이력서 관리 클릭 시 
	      $("#resume_management").on("click", function() {
	    	  $("#summary_wrap").css("display","none");
	    	  $("#section_rightmenu").css("display","none");
	      	  $("#resume_management_wrap").css("display","block");
	      	  location.href = "resume_management.unicol";
	      });
	      
	      // 회원정보 수정 클릭 시
	      $("#memberInfo_modify_btn").on("click", function() {
	    	  $("#summary_wrap").css("display","none");
	    	  $("#memberInfo_modify_wrap").css("display", "block");
	      			  
	      });
	      
	      // 수정버튼 클릭시
	      $(".rmodify_btn").on("click", function() {
	    	  var rnum = $(this).attr("data_num");
	    	  alert("rnum : " + rnum);
	    	  
	    	  location.href = "jasoModify.unicol?rnum=" + rnum;
	      		  
	      });
	 
	      
      });
</script>
<body>
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
                                    </ul>
                        </div>
                  </div>
                  <div id="section_rightmenu">
                        <div class="rightmenu">
                              <ul>
                                    <li>
                                          <a href="#">
                                          <span><img alt="" src="image/mypage/write.png">자소서 작성</span>
                                          </a>
                                    </li>
                                    <li>
                                          <a href="#">
                                          <span><img alt="" src="image/mypage/spell.png">맞춤법 검사</span>
                                          </a>
                                    </li>
                                    <li>
                                          <a href="#">
                                          <span><img alt="" src="image/mypage/count.png">글자수 세기</span>
                                          </a>
                                    </li>
                                    <li>
                                          <a href="#">
                                          <span><img alt="" src="image/mypage/calculator.png">학점 변환</span>
                                          </a>
                                    </li>
                              </ul>                   
                        </div>
                  </div>
                  
                  <!--Mypage Main 영역  -->
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
                        
                        <!-- 반복할 부분  -->
                        <div id="recruit_summary">
                              <div id="desc">
                                    	한국디자인진흥원    
                              </div>
                              <div id="summary_inner">
                                    <ul id="info_list">
                                          <li class="company_name"></li>
                                          <li class="recruit_name">2018년 중소중견기업 디자인인력지원사업 인력모집 공고</li>
                                          <li class="recurit_sector">
                                                <span>신입 · 경력 </span>
                                                <span class="bar">|</span>
                                                <span >학력무관</span>
                                                <span class="bar">|</span>
                                                <span>서울전체</span>
                                                <span class="bar">|</span>
                                                <span>정규직, 계약직</span>
                                          </li>
                                    </ul>
                                    
                                    <div class="info_date">
                                          <span>~05/04(금)</span><br>
                                          <button class="btn_immediately">      
                                                <span class="span_immediately">즉시지원</span>
                                          </button>
                                    </div>
                              </div>
                        </div>
                        
                        <div id="recruit_summary">
                              <div id="desc">
                                    한국디자인진흥원    
                              </div>
                              <div id="summary_inner">
                                    <ul id="info_list">
                                          <li class="company_name"></li>
                                          <li class="recruit_name">2018년 중소중견기업 디자인인력지원사업 인력모집 공고</li>
                                          <li class="recurit_sector">
                                                <span>신입 · 경력 </span>
                                                <span class="bar">|</span>
                                                <span >학력무관</span>
                                                <span class="bar">|</span>
                                                <span>서울전체</span>
                                                <span class="bar">|</span>
                                                <span>정규직, 계약직</span>
                                          </li>
                                    </ul>
                                    
                                    <div class="info_date">
                                          <span>~05/04(금)</span><br>
                                          <button class="btn_immediately">      
                                                <span class="span_immediately">즉시지원</span>
                                          </button>
                                    </div>
                              </div>
                        </div>
                        
                        <div id="recruit_summary">
                              <div id="desc">
                                    한국디자인진흥원    
                              </div>
                              <div id="summary_inner">
                                    <ul id="info_list">
                                          <li class="company_name"></li>
                                          <li class="recruit_name">2018년 중소중견기업 디자인인력지원사업 인력모집 공고</li>
                                          <li class="recurit_sector">
                                                <span>신입 · 경력 </span>
                                                <span class="bar">|</span>
                                                <span >학력무관</span>
                                                <span class="bar">|</span>
                                                <span>서울전체</span>
                                                <span class="bar">|</span>
                                                <span>정규직, 계약직</span>
                                          </li>
                                    </ul>
                                    
                                    <div class="info_date">
                                          <span>~05/04(금)</span><br>
                                          <button class="btn_immediately">      
                                                <span class="span_immediately">즉시지원</span>
                                          </button>
                                    </div>
                              </div>
                        </div>
                        
                        <div id="recruit_summary">
                              <div id="desc">
                                    한국디자인진흥원    
                              </div>
                              <div id="summary_inner">
                                    <ul id="info_list">
                                          <li class="company_name"></li>
                                          <li class="recruit_name">2018년 중소중견기업 디자인인력지원사업 인력모집 공고</li>
                                          <li class="recurit_sector">
                                                <span>신입 · 경력 </span>
                                                <span class="bar">|</span>
                                                <span >학력무관</span>
                                                <span class="bar">|</span>
                                                <span>서울전체</span>
                                                <span class="bar">|</span>
                                                <span>정규직, 계약직</span>
                                          </li>
                                    </ul>
                                    
                                    <div class="info_date">
                                          <span>~05/04(금)</span><br>
                                          <button class="btn_immediately">      
                                                <span class="span_immediately">즉시지원</span>
                                          </button>
                                    </div>
                              </div>
                        </div>
                        
                        <div id="recruit_summary">
                              <div id="desc">
                                    한국디자인진흥원    
                              </div>
                              <div id="summary_inner">
                                    <ul id="info_list">
                                          <li class="company_name"></li>
                                          <li class="recruit_name">2018년 중소중견기업 디자인인력지원사업 인력모집 공고</li>
                                          <li class="recurit_sector">
                                                <span>신입 · 경력 </span>
                                                <span class="bar">|</span>
                                                <span >학력무관</span>
                                                <span class="bar">|</span>
                                                <span>서울전체</span>
                                                <span class="bar">|</span>
                                                <span>정규직, 계약직</span>
                                          </li>
                                    </ul>
                                    
                                    <div class="info_date">
                                          <span>~05/04(금)</span><br>
                                          <button class="btn_immediately">      
                                                <span class="span_immediately">즉시지원</span>
                                          </button>
                                    </div>
                              </div>
                        </div>
                        
                        <div id="recruit_summary">
                              <div id="desc">
                                    한국디자인진흥원    
                              </div>
                              <div id="summary_inner">
                                    <ul id="info_list">
                                          <li class="company_name"></li>
                                          <li class="recruit_name">2018년 중소중견기업 디자인인력지원사업 인력모집 공고</li>
                                          <li class="recurit_sector">
                                                <span>신입 · 경력 </span>
                                                <span class="bar">|</span>
                                                <span >학력무관</span>
                                                <span class="bar">|</span>
                                                <span>서울전체</span>
                                                <span class="bar">|</span>
                                                <span>정규직, 계약직</span>
                                          </li>
                                    </ul>
                                    
                                    <div class="info_date">
                                          <span>~05/04(금)</span><br>
                                          <button class="btn_immediately">      
                                                <span class="span_immediately">즉시지원</span>
                                          </button>
                                    </div>
                              </div>
                        </div>
                        
                        <div id="recruit_summary">
                              <div id="desc">
                                    한국디자인진흥원    
                              </div>
                              <div id="summary_inner">
                                    <ul id="info_list">
                                          <li class="company_name"></li>
                                          <li class="recruit_name">2018년 중소중견기업 디자인인력지원사업 인력모집 공고</li>
                                          <li class="recurit_sector">
                                                <span>신입 · 경력 </span>
                                                <span class="bar">|</span>
                                                <span >학력무관</span>
                                                <span class="bar">|</span>
                                                <span>서울전체</span>
                                                <span class="bar">|</span>
                                                <span>정규직, 계약직</span>
                                          </li>
                                    </ul>
                                    
                                    <div class="info_date">
                                          <span>~05/04(금)</span><br>
                                          <button class="btn_immediately">      
                                                <span class="span_immediately">즉시지원</span>
                                          </button>
                                    </div>
                              </div>
                        </div>
                  </div>
                  
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
                  				
                  				<tr>
                  					<td colspan="5">
                  						<div id="resumelist_none">
                  						<strong>저장된 <span id="resumeStrong">이력서</span> 가 없습니다.</strong>
                  						<p>지금 바로 나만의 이력서를 작성해보세요</p>
                  						<a id="resumelist_none_btn" href="resumeInsert.unicol">이력서 작성</a>
                  						</div>
                  					</td>
                  				
                  			</table>
                  		</form>
                  	</div>
                  	
                  	<!-- 자기소개서 리스트 --> 
                  	<div id="cover_letter_wrap">
                  		<h3 id="cover_letter_list_title">자기소개서 리스트</h3>
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
                  				
                  				<c:forEach items="${resumeList}" var="resumeList">
                  				
                  				<tr>
                  					<td><input type="checkbox"></td>
                  					<td><a href="#">${resumeList.title}</a></td>
                  					<td>
                  						<a class="resumeBtn rmodify_btn" id="resumeModify_btn" data_num="${resumeList.num}" href="#">수정</a>
                  						<a class="resumeBtn rdelete_btn" id="resumeDelete_btn" href="#">삭제</a>
                  					</td>
                  					<td><fmt:formatDate pattern="yyyy-MM-dd " value="${resumeList.regdate}"/></td>
                  					<td>-</td>
                  				</tr>
                  				</c:forEach>
                  				
                  				<c:if test="${resumeList == null}">
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
                  	<div>
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
                  
                  <!-- 개인정보 수정  -->
                  <div id="memberInfo_modify_wrap">
				  	<div id="memberInfo_modify_title_area">
				  		<h3>개인정보 수정</h3>
				  	</div>		
				  </div>	
            </div>
      </div>
</body>
<%@include file="../include/footer.jsp"%>
</html>