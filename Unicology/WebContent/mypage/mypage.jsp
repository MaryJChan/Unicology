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
	
	#scrapCntNone {
		background-color: #fff;
		padding: 82px 30px;
		box-shadow: 0 1px 1px 1px rgba(0, 0, 0, 0.12);
		margin-top: 10px;	
		text-align: center;
	} 
	
	#scrapCntNone p {
		margin-bottom: 23px;
		color: #888;
		font-size: 14px;
	}
	
	#scrapGo_btn {
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
		padding-left: 124px;
		width: 795px;
		display: none;
		position: relative;
	} */
	
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
		
			
	#scrap_title > h3 {
		font-size: 28px;
	    line-height: 36px;
	    color: #444;
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

/* 		// 이력서 관리 클릭 시 
		$("#resume_management").on("click", function() {
			$("#summary_wrap").css("display", "none");
			$("#section_rightmenu").css("display", "none");
			$("#resume_management_wrap").css("display", "block");
			location.href = "resume_management.unicol";
		});
		 */
		
		//회원정보 수정 클릭 시
	/* 	$("#memberInfo_modify_btn").on("click", function() {
			
			var birth = $("#mbirth").val();
			var year = birth.substring(0,2);
			var month = birth.substring(2,4);
			var day = birth.substring(4,6);
			var gender = $("#mgender").val();
			var email = $("#memail").val();
			var emailStr = email.split('@');
			
			$("#summary_wrap").css("display", "none");
			$("#memberUpdate_wrap").css("display", "block");
		
			// 성별 값
			$('input:radio[name="person_gender"][value=' + gender + ']').prop('checked', true);

			// 이메일 값 
			$("#email").val(emailStr[0]);
			$("#email01").val(emailStr[1])
			$("#selemail").val(emailStr[1]).prop("selected", true); //값이 1인 option 선택
			
			/* email selectBox 클릭했을 때 <input>창에 값 받기 
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
			
			/* email 정규식 및 null 체크  
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
		
	
		/* 김성민 추가
		 * 회원 탈퇴 모달 창 
		*/
		$("#memberInfo_delete_btn").on("click",function(){
			$("#myDModal").css("display","block");
		});
		$(".close").on("click",function (){
			$("#myDModal").css("display","none");
		});
		
		
		//입력창 누르면 색 변화
		$("#delete_name").focus(function() {
			$("#del_name").css("border", "1px solid #6495ED");

		});
		$("#delete_pw").focus(function() {
			$("#del_pw").css("border", "1px solid #6495ED");

		});
		$("#delete_text").focus(function() {
			$("#del_txt").css("border", "1px solid #6495ED");

		});
		
		$("#delete_name").blur(function() {
			$("#del_name").css("border", "1px solid #dadada");

		});
		$("#delete_pw").blur(function() {
			$("#del_pw").css("border", "1px solid #dadada");

		});
		$("#delete_text").blur(function() {
			$("#del_txt").css("border", "1px solid #dadada");

		});

		$("#btn_delete").on("click",function() {

			var name = $("#delete_name");
			var pw = $("#delete_pw");
			var txt = $("#delete_text");

			var lname = name.val();
			var lpw = pw.val();
			var ltxt = txt.val();
			
			//유효성 검사
			if (lpw == "") {
				pw.focus();
				$("#err_chk1").text("비밀번호를 입력해주세요.").css("display", "block")
						.css("color", "red");
				return false;
			} else if (ltxt == ""){
				txt.focus();
				$("#err_chk1").text("동일하게 입력해주세요.").css("display", "block")
						.css("color", "red");
				return false;
			} else if (ltxt != "회원 탈퇴 하겠습니다."){
				txt.focus();
				$("#err_chk1").text("동일하게 입력해주세요.").css("display", "block")
						.css("color", "red");
				return false;
			}
			$("#frm_delete").submit();
		});
		
		/* 스크랩 공고 클릭 시  */
		$("#scarp_btn").on("click", function() {
			alert("스크랩버튼 클릭");
			$.ajax({
				
				//서블릿이 어디로 갈건지 
				url: "scrap.unicol",
				type: "POST",
				/* data: "bno=" + bno, */
				success: function(result) {
					alert(result);
					$("#scrap_wrap").html(result);
					$("#summary_wrap").css("display","none");
					$("#section_rightmenu").css("display","none");
				}
			});
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

	<!-- 스크랩 영역  -->
	<div id="scrap_wrap"></div>

	<!--Mypage Main 영역  -->
	<div id="summary_wrap">
		<div class="dashboard">
			<ul class="active_list">
				<li><a> <span class="doing"> <em>0</em> /5
					</span> <span>이력서</span>
				</a></li>
				<li><a id="scarp_btn" href="#"> <span class="doing"> <em>1</em>
					</span> <span>스크랩</span>
				</a></li>
				<li><a> <span class="doing"> <em>3</em>
					</span> <span>관심 기업</span>
				</a></li>

				<li><span class="doing"> <em>17</em> /200
				</span> <span>최근 본 공고</span></li>
			</ul>
		</div>

		<div id="recruit_Tab">
			<ul class="recruit_list_navigation">
				<li class="on"><a>스크랩 공고</a></li>
				<li><a>관심기업</a></li>
				<li><a>최근 본 공고 </a></li>
				<li><a>맞춤 채용</a></li>
			</ul>
		</div>

		<!-- 반복할 부분  -->
		<c:forEach items="${empinfoListEno}" var="empinfoListEno">
		<div id="recruit_summary">
			<div id="desc">${empinfoListEno.companyName}</div>
			<div id="summary_inner">
				<ul id="info_list">
					<li class="company_name"></li>
					<li class="recruit_name">${empinfoListEno.title}</li>
					<li class="recurit_sector">
						<span>${empinfoListEno.career} </span> 
						<span class="bar">|</span> 
						<span>${empinfoListEno.education}</span> 
						<span class="bar">|</span>
						<span>${empinfoListEno.work_place}</span> 
						<span class="bar">|</span> 
						<span>${empinfoListEno.employmentType}</span>
					</li>
				</ul>

				<div class="info_date">
					<span>${empinfoListEno.deadlines}</span><br>
					<button class="btn_immediately">
						<span class="span_immediately">즉시지원</span>
					</button>
				</div>
			</div>
		</div>
		</c:forEach>
		
		<c:if test="${empinfoListEno==null}">
		<div id="scrapCntNone">
			<p>스크랩 하신 채용공고가 없습니다.</p>
			<p>지금 채용공고를 스크랩 해보세요.</p>
			<a id="scrapGo_btn" href="joblist.unicol">채용공고로 이동하기</a>
		</div>
		</c:if>
	</div>


</body>
</html>
