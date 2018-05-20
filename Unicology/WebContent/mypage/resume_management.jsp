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
	#memberUpdate_wrap {
		padding-left: 220px;
		width: 795px;
		display: none;
		position: relative;
	}
	
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
</style>
</head>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		$(".recruit_list_navigation li").on("click", function() {
			$(".recruit_list_navigation li").removeClass('on');
			$(this).attr("class", "on");
		});

		// 이력서 관리 클릭 시 
		$("#resume_management").on("click", function() {
			$("#summary_wrap").css("display", "none");
			$("#section_rightmenu").css("display", "none");
			$("#resume_management_wrap").css("display", "block");
			location.href = "resume_management.unicol";
		});
		
		// 수정버튼 클릭시
	    $(".rmodify_btn").on("click", function() {
	    	var rnum = $(this).attr("data_num");
	    	alert("rnum : " + rnum);
	    	  
	    	location.href = "jasoModify.unicol?rnum=" + rnum;
	      		  
	     });
		
		
		//회원정보 수정 클릭 시
		$("#memberInfo_modify_btn").on("click", function() {
			
			alert("!!!!??");
			$("#summary_wrap").css("display", "none");
			$("#memberUpdate_wrap").css("display", "block");
			
			var birth = $("#mbirth").val();
			var year = birth.substring(0,2);
			var month = birth.substring(2,4);
			
			var day = birth.substring(4,6);
			var gender = $("#mgender").val();
			var email = $("#memail").val();
			var emailStr = email.split('@');
		
			// 성별 값
			$('input:radio[name="person_gender"][value=' + gender + ']').prop('checked', true);

			// 이메일 값 
			$("#email").val(emailStr[0]);
			$("#email01").val(emailStr[1])
			$("#selemail").val(emailStr[1]).prop("selected", true); //값이 1인 option 선택
			
			/* email selectBox 클릭했을 때 <input>창에 값 받기 */
			$("#selemail").on("change", function() {
				var selemail = $("#selemail").val();
				if(selemail == "directval") {
					$("#email01").val("");
					$("#email01").focus();
				} else {
					$("#email01").val(selemail);	
				}
			});
			
			//생년월일 값
			$("#year").val(year).prop("selected", true); 
			$("#month").val(month).prop("selected", true); 
			$("#day").val(day).prop("selected", true); 

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
	
	/* 우편번호 검색 */
	  function sample6_execDaumPostcode() {
      new daum.Postcode({
          oncomplete: function(data) {
              // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

              // 각 주소의 노출 규칙에 따라 주소를 조합한다.
              // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
              var fullAddr = ''; // 최종 주소 변수
              var extraAddr = ''; // 조합형 주소 변수

              // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
              if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                  fullAddr = data.roadAddress;

              } else { // 사용자가 지번 주소를 선택했을 경우(J)
                  fullAddr = data.jibunAddress;
              }

              // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
              if(data.userSelectedType === 'R'){
                  //법정동명이 있을 경우 추가한다.
                  if(data.bname !== ''){
                      extraAddr += data.bname;
                  }
                  // 건물명이 있을 경우 추가한다.
                  if(data.buildingName !== ''){
                      extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                  }
                  // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                  fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
              }

              // 우편번호와 주소 정보를 해당 필드에 넣는다.
              document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새 우편번호 사용
              document.getElementById('sample6_address').value = fullAddr;

              // 커서를 상세주소 필드로 이동한다.
              document.getElementById('sample6_address2').focus();
          }
      }).open();
  }
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
                  
                  <!-- 개인 정보 수정  -->
                  <form action="memberUpdate.unicol" name="memberupdatefrm" id="memberupdatefrm">
				  <div id="memberUpdate_wrap">
				  	<div id="memberUpdate_content">
					  	<h3>개인정보 수정</h3>
					  	<c:forEach items="${memUpdateList}" var="memUpdateList">
					  	<input type="hidden" id="mbirth" value="${memUpdateList.mbirth}">
					  	<input type="hidden" id="mgender" value="${memUpdateList.msex}">
					  	<input type="hidden" id="memail" value="${memUpdateList.memail}">
					  	<div id="member_update_info">
					  		<ul id="member_update_profile">
					  			<li class="photo">
					  				<span><img alt="" src="image/mypage/user.png"></span>
					  			</li>
					  			<li><input class="update_input" name="memname" id="memname" type="text" value="${memUpdateList.mname}"></li>
					  			<li id="memid">${memUpdateList.mid}</li>
					  		</ul>
					  		<table id="tbl_info">
					  			<colgroup>
					  				<col style="width:130px">
					  				<col>
					  			</colgroup>
					  			
					  			<tr>
					  				<th>전화번호</th>
					  				<td><input class="update_input" id="memphone" name="memphone" type="text" value="${memUpdateList.mphone}"></td>
					  			</tr>
					  			<tr>
					  				<th>이메일 주소</th>
					  				<td>
					  					<input type="text" class="update_input" id="email" name="email" value="">
										@
										<input type="text" class="update_input" id="email01" name="email01" value="">
										<select class="update_input" id="selemail" name="selemail">
											<option value="이메일선택">이메일 선택</option>
											<option value="naver.com">naver.com</option>
											<option value="daum.net">daum.net</option>
											<option value="nate.com">nate.com</option>
											<option value="hotmail.com">hotmail.com</option>
											<option value="yahoo.com">yahoo.com</option>
											<option value="empas.com">empas.com</option>
											<option value="korea.com">korea.com</option>
											<option value="dreamwiz.com">dreamwiz.com</option>
											<option value="gmail.com">gmail.com</option>
											<option value="directval">직접입력</option>
										</select>
					  				</td>
					  			</tr>
					  			<tr>
					  				<th>생년월일</th>
					  				<td>
					  					<select class="update_input year" id="year" name="year">
					  						<option value="04">2004</option>
					  						<option value="03">2003</option>
					  						<option value="02">2002</option>
					  						<option value="01">2001</option>
					  						<option value="00">2000</option>
					  						<option value="99">1999</option>
					  						<option value="98">1998</option>
					  						<option value="97">1997</option>
					  						<option value="96">1996</option>
					  						<option value="95">1995</option>
					  						<option value="94">1994</option>
					  						<option value="93">1993</option>
					  						<option value="92">1992</option>
					  						<option value="91">1991</option>
					  						<option value="90">1990</option>
					  						<option value="89">1989</option>
					  						<option value="88">1988</option>
					  						<option value="87">1987</option>
					  						<option value="86">1986</option>
					  						<option value="85">1985</option>
					  						<option value="84">1984</option>
					  						<option value="83">1983</option>
					  						<option value="82">1982</option>
					  						<option value="81">1981</option>
					  						<option value="80">1980</option>
					  						<option value="79">1979</option>
					  						<option value="78">1978</option>
					  						<option value="77">1977</option>
					  						<option value="76">1976</option>
					  						<option value="75">1975</option>
					  						<option value="74">1974</option>
					  						<option value="73">1973</option>
					  						<option value="72">1972</option>
					  						<option value="71">1971</option>
					  						<option value="70">1970</option>
					  						<option value="69">1969</option>
					  						<option value="68">1968</option>
					  						<option value="67">1967</option>
					  						<option value="66">1966</option>
					  						<option value="65">1965</option>
					  						<option value="64">1964</option>
					  						<option value="63">1963</option>
					  						<option value="62">1962</option>
					  						<option value="61">1961</option>
					  						<option value="60">1960</option>
					  						<option value="59">1959</option>
					  						<option value="58">1958</option>
					  						<option value="57">1957</option>
					  						<option value="56">1956</option>
					  						<option value="55">1955</option>
					  						<option value="54">1954</option>
					  						<option value="53">1953</option>
					  						<option value="52">1952</option>
					  						<option value="51">1951</option>
					  						<option value="50">1950</option>
					  						<option value="49">1949</option>
					  						<option value="48">1948</option>
					  						<option value="47">1947</option>
					  						<option value="46">1946</option>
					  						<option value="45">1945</option>
					  						<option value="44">1944</option>
					  						<option value="43">1943</option>
					  						<option value="42">1942</option>
					  						<option value="41">1941</option>
					  						<option value="40">1940</option>
					  						<option value="39">1939</option>
					  						<option value="38">1938</option>
					  						<option value="37">1937</option>
					  						<option value="36">1936</option>
					  						<option value="35">1935</option>
					  						<option value="34">1934</option>
					  						<option value="33">1933</option>
					  						<option value="32">1932</option>
					  						<option value="31">1931</option>
					  						<option value="30">1930</option>
					  						<option value="29">1929</option>
					  						<option value="28">1928</option>
					  						<option value="27">1927</option>
					  						<option value="26">1926</option>
					  						<option value="25">1925</option>
					  						<option value="24">1924</option>
					  						<option value="23">1923</option>
					  						<option value="22">1922</option>
					  						<option value="21">1921</option>
					  						<option value="20">1920</option>
					  						<option value="19">1919</option>
					  						<option value="18">1918</option>
					  						<option value="17">1917</option>
					  						<option value="16">1916</option>
					  						<option value="15">1915</option>
					  						<option value="14">1914</option>
					  						<option value="13">1913</option>
					  						<option value="12">1912</option>
					  						<option value="11">1911</option>
					  						<option value="10">1910</option>
					  						<option value="09">1909</option>
					  						<option value="08">1908</option>
					  						<option value="07">1907</option>
					  						<option value="06">1906</option>
					  						<option value="05">1905</option>
					  						<option value="04">1904</option>
					  						<option value="03">1903</option>
					  						<option value="02">1902</option>
					  						<option value="01">1901</option>
					  						<option value="00">1900</option>
					  					</select>
					  					<select class="update_input month" id="month" name="month">
					  						<option value="01">1</option>
					  						<option value="02">2</option>
					  						<option value="03">3</option>
					  						<option value="04">4</option>
					  						<option value="05">5</option>
					  						<option value="06">6</option>
					  						<option value="07">7</option>
					  						<option value="08">8</option>
					  						<option value="09">9</option>
					  						<option value="10">10</option>
					  						<option value="11">11</option>
					  						<option value="12">12</option>
					  					</select>
					  					<select class="update_input day" id="day" name="day">
					  						<option value="01">1</option>
					  						<option value="02">2</option>
					  						<option value="03">3</option>
					  						<option value="04">4</option>
					  						<option value="05">5</option>
					  						<option value="06">6</option>
					  						<option value="07">7</option>
					  						<option value="08">8</option>
					  						<option value="09">9</option>
					  						<option value="10">10</option>
					  						<option value="11">11</option>
					  						<option value="12">12</option>
					  						<option value="13">13</option>
					  						<option value="14">14</option>
					  						<option value="15">15</option>
					  						<option value="16">16</option>
					  						<option value="17">17</option>
					  						<option value="18">18</option>
					  						<option value="19">19</option>
					  						<option value="20">20</option>
					  						<option value="21">21</option>
					  						<option value="22">22</option>
					  						<option value="23">23</option>
					  						<option value="24">24</option>
					  						<option value="25">25</option>
					  						<option value="26">26</option>
					  						<option value="27">27</option>
					  						<option value="28">28</option>
					  						<option value="29">29</option>
					  						<option value="30">30</option>
					  						<option value="31">31</option>
					  					</select>
					  					
					  				</td>
					  			</tr>
					  			<tr>
					  				<th>성별</th>
					  				<td>
					  					<label for="person_gender1"><input id="person_gender1" name="person_gender" type="radio" value="M"><span class="txt_chk">남</span></label>
					  					<label for="person_gender2"><input id="person_gender2" name="person_gender" type="radio" value="W"><span class="txt_chk">여</span></label>
					  				</td>
					  			</tr>
					  			<tr>
					  				<th>주소</th>
					  				<td>
					  					<input type="hidden" id="sample6_postcode" name="sample6_postcode" value="">
					  					<input class="update_input" id="sample6_address" name="sample6_address" type="text" value="${memUpdateList.maddr}">
					  					<a href="#" id="addr_btn" onclick="sample6_execDaumPostcode()">우편번호 찾기</a>
					  				</td>
					  			</tr>
					  			<tr>
					  				<th>상세 주소</th>
					  				<td><input class="update_input" id="sample6_address2" name="sample6_address2" type="text" value="${memUpdateList.maddr_detail}"></td>
					  			</tr>
					  			
					  		</table>
					  	</div>	
					  	</c:forEach>
					  	
					  	<div id="update_btn">
					  		<a href="#" id="update_complete">수정완료</a>
					  	</div>	
				  	</div>
				  </div>	
				  </form>
            </div>
      </div>
</body>
<%@include file="../include/footer.jsp"%>
</html>
