<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
</script>
<style type="text/css">
      body,ul{
            margin: 0;
            padding: 0;
      }
      .resume_page1{
            background-color: #ececec;
            width: 100%;
      }
      .resume_inner_page1{
            padding-top:50px;
            width: 80%;
            margin: 0 auto;
      }
      .resume_title{
            width: 78%;
            height: 80px;
            border: 0;
            margin-bottom: 20px;
      }
      #resume_title{
            width: 98%;
            height:80px;
            font-size: 30px;        
            border: 0;
            padding-left: 20px;
      }
      /* 추가한 부분 */
      /* info_title */
      .profile,.school{
            margin-bottom: 14px;
            color: #333;
            font-weight: bold;
            font-size: 20px;
      }
      .formWrap {
      	width: 100%;
      	position: relative;
      }
      .formheader {
      	margin-bottom: 14px;
      	color: #333;
      	font-weight: bold;
      	font-size: 20px;
      }
      .form .row:nth-child(1){
      	z-index: 190;
      }
      .form .row:nth-child(2){
      	z-index: 180;
      }
      .form {
		    position: relative;
		    width: 950px;
		    padding: 20px 20px 10px;
		    background-color: #fff;
		    border: 1px solid #dbe0e9;
		    box-sizing: border-box;
	  }
      .form .row {
	    position: relative;
	    margin-bottom: 10px;
	    font-size: 0;
	  }
	  .input.value {
	  	z-index: 10;
	  	padding-top: 19px;
	  }
	  .input.value label,.selectbox label{
	  	top: 9px;
	  	font-size: 11px;
	  	color: #a8a8a8;
	  }
	  .input.value input {
	  	height: 41px;
	  }
	  .input {
	  	position: relative;
	  	display: inline-block;
	  	zoom: 1;
	  	width: 160px;
	  	height: 62px;
	  	margin-left: 10px;
	  	border: 1px solid #ddd;
	  	box-sizing: border-box;
	  	vertical-align: top;
	  	text-align: left;
	  	background-color: #fff;
	  }
	  .input label {
	  	visibility: visible;
	  	z-index: 100;
	  	position: absolute;
	  	left: 15px;
	  	top: 18px;
	  	color: #999;
	  	font-size: 16px;
	  }
	  .input input {
	  	display: block;
	  	width: 100%;
	  	height: 60px;
	  	padding: 0 15px;
	  	border: 0;
	  	color: #333;
	  	outline: none;
	  	box-sizing: border-box;
	  	background-color: transparent;
	  	font-size: 16px;
	  }
	  label {
	  	cursor: pointer;
	  	vertical-align: middle;
	  }
	  .profile_name,.profile_birth,.profile_tel,.profile_phone {
	  	width: 182px;
	  }
	  .selectbox {
	  	position: relative;
	  	display: inline-block;
	  	zoom: 1;
	  	width: 160px;
	  	height: 62px;
	  	margin-right: 10px;
	  	box-sizing: border-box;
	  	vertical-align: top;
	  	text-align: left;
	  }
	  .profile_sex,.school_grade {
	  	width: 115px;
	  }
	  .selectbox label {
	  	position: absolute;
	  	left: 25px;
	  }
	  .selectbox select {
	  	width: 115px;
	  	height: 62px;
	  	margin:0 10px;
	  	padding-top: 15px;
	  	padding-left: 20px;
	  	font-size: 16px;
	  	color: #333;
	  	border: 1px solid #ddd;
	  	outline: none;
	  }
	  .profile_email {
	  	width: 276px;
	  }
	  .profile_adress {
	  	width: 401px;
	  }
	  .school_name {
	  	width: 350px;
	  }
	  .entrance_year,.graduation_year,.graduation_status{
	  	width: 115px;
	  }
	  /* 다슬이거 추가 내용 */
	  .plus_btn_front {
	  	margin-bottom: 34px;
	    width: 78.15%;
	    height: 50px;
	    text-align: center;
	    line-height: 50px;
	    border-top: 1px solid #eee;
	    box-sizing: border-box;
	    background-color: #fff;
	    border: none;
	    font-size: 16px;
	    border: 1px solid #dbe0e9;
	    border-top: 0;
		}
		button {
		    cursor: pointer;
		}
		.x_btn {
		    width: 35px;
		    height: 35px;
		    background-color: #BABABA;
		    color: white;
		    font-size: 30px;
		    text-align: center;
		    line-height: 35px;
		    border: none;
		    position: absolute;
		    right: 0;
		    top: -1px;
		}
		#award_btn {
		    width: 20px;
		    height: 20px;
		    vertical-align: middle;
		    padding: 0 8px;
		}
</style>
</head>
<body>
      <!-- .unicology로 임의로 정함 -->
      <div class="resume_page1">
            <div class="resume_inner_page1">
                  <form action="resume_insert.unicology" method="post">
                        <div class="resume_title">
                              <input id="resume_title" name="resume_title" type="text" placeholder="기업에게 나에대해 알려보세요. 강점,목표,관심분야도 좋아요" maxlength="100">
                        </div>
                        <!-- 추가및 수정한 부분  -->
                        <!-- 인적사항 -->
                        <div class="formWrap profile">
                        	<h2 class="formheader">인적사항</h2> 
                        	<div class="form formprofile">
                        		<div class="row">
                        			<div class="input value profile_name">
                        				<label for="UserName">이름</label>
                        				<input type="text" name="UserName" id="UserName" value="세션이름" >
                        			</div>
                        			<div class="input value profile_birth">
                        				<label for="UserBirth">생년월일</label>
                        				<input type="text" id="UserBirth" name="UserBirth" value="세션생년월일">
                        			</div>
                        			<div class="selectbox profile_sex">
                        				<label>성별</label>
                        				<select>
                        					<option value="man">남자</option>
                        					<option value="woman">여자</option>
                        				</select>
                        			</div>
                        			<div class="input value profile_email">
                        				<label for="UserEmail">생년월일</label>
                        				<input type="text" id="UserEmail" name="UserEmail" value="세션email">
                        			</div>
                        		</div>
                        		<button class="x_btn" id="award_x">&times;</button>
                        		<div class="row">
                        			<div class="input value profile_tel">
                        				<label for="UserTel">전화번호</label>
                        				<input type="text" name="UserTel" id="UserTel" value="" >
                        			</div>
                        			<div class="input value profile_phone">
                        				<label for="UserPhone">휴대폰번호</label>
                        				<input type="text" name="UserPhone" id="UserPhone" value="세션휴대폰" >
                        			</div>
                        			<div class="input value profile_adress">
                        				<label for="UserAdress">주소</label>
                        				<input type="text" name="UserAdress" id="UserAdress" value="세션주소" >
                        			</div>
                        		</div>
                        	</div>
                        </div>
                        <!-- 학력 -->
                        <div class="formWrap school">
                        <h2 class="formheader">학력</h2> 
                        	<div class="form formschool">
                        		<div class="row">
	                        		<div class="selectbox school_grade" >
	                        				<label>학교구분</label>
	                        				<select style="letter-spacing: -1px; padding-left: 15px;">
	                        					<option value="고등학교" >고등학교</option>
												<option value="대학(2,3년)">대학(2,3년)</option>
												<option value="대학교">대학교</option>
												<option value="대학원">대학원</option>
	                        				</select>
	                       			</div>
	                       			<div class="input value school_name" style="margin: 0;  border-left: 0;">
	                        				<label for="SchoolName">학교명</label>
	                        				<input type="text" name="SchoolName" id="SchoolName" value="학교명" >
	                       			</div>
	                       			<!-- 고졸 -->
	                       			<div class="graduation_high" style="display: none;">
		                       			<div class="input value graduation_year">
		                       				<label for="graduationYear">졸업년도</label>
		                       				<input type="text" name="graduationYear" id="graduationYear">
		                       			</div>
		                       			<div class="selectbox graduation_status high" style="margin: 0;">
		                        				<label style="margin-left: -20px;">졸업상태</label>
		                        				<select style="letter-spacing: -1px; padding-left: 15px; margin-left: -10px; border-left: 0;">
		                        					<option value="졸업">졸업</option>
													<option value="졸업예정">졸업예정</option>
		                        				</select>
		                       			</div>
	                       			</div>
	                       			<!-- 초대졸 -->
	                       			<div class="graduation_college" style="display: inline-block;">
		                       			<div class="input value entrance_year">
		                       				<label for="entranceYear">입학년도</label>
		                       				<input type="text" name="entranceYear" id="entranceYear">
		                       			</div>
		                       			<div class="input value graduation_year" style="margin-left: -10px;">
		                       				<label for="graduationYear">졸업년도</label>
		                       				<input type="text" name="graduationYear" id="graduationYear">
		                       			</div>
		                       			<div class="selectbox graduation_status univ" style="margin: 0;">
		                        				<label style="margin-left: -10px;">졸업상태</label>
		                        				<select style="letter-spacing: -1px; padding-left: 15px; margin-left: 0; border-left: 0;">
		                        					<option value="졸업">졸업</option>
													<option value="졸업예정">졸업예정</option>
		                        				</select>
		                       			</div>
	                       			</div>
	                       			<!-- 대졸 -->
	                       			<div class="graduation_univ" style="display: none;">
	                       				<div class="input value entrance_year">
		                       				<label for="entranceYear">입학년도</label>
		                       				<input type="text" name="entranceYear" id="entranceYear">
		                       			</div>
		                       			<div class="input value graduation_year" style="margin-left: -10px;">
		                       				<label for="graduationYear">졸업년도</label>
		                       				<input type="text" name="graduationYear" id="graduationYear">
		                       			</div>
		                       			<div class="selectbox graduation_status highschool" style="margin: 0;">
		                        				<label style="margin-left: -10px;">졸업상태</label>
		                        				<select style="letter-spacing: -1px; padding-left: 15px; margin-left: 0; border-left: 0;">
		                        					<option value="졸업">졸업</option>
													<option value="졸업예정">졸업예정</option>
		                        				</select>
		                       			</div>
	                       			</div>
	                       			<!-- 대학원졸 -->
	                       			<div class="graduation_gradu" style="display: none;">
	                       				<div class="input value entrance_year">
		                       				<label for="entranceYear">입학년도</label>
		                       				<input type="text" name="entranceYear" id="entranceYear">
		                       			</div>
		                       			<div class="input value graduation_year" style="margin-left: -10px;">
		                       				<label for="graduationYear">졸업년도</label>
		                       				<input type="text" name="graduationYear" id="graduationYear">
		                       			</div>
		                       			<div class="selectbox graduation_status highschool" style="margin: 0;">
		                        				<label style="margin-left: -10px;">졸업상태</label>
		                        				<select style="letter-spacing: -1px; padding-left: 15px; margin-left: 0; border-left: 0;">
		                        					<option value="졸업">졸업</option>
													<option value="졸업예정">졸업예정</option>
		                        				</select>
		                       			</div>
	                       			</div>
	                       		</div>
	                       		<button class="x_btn" id="award_x">&times;</button>
	                        	<div class="row non_high" style="display: inline-block;">
	                        		<div class="input value major" style="width: 465px;">
			                       				<label for="major">전공명</label>
			                       				<input type="text" name="major" id="major">
	                       			</div>
	                       			<div class="input value major_grade" style="width: 105px;">
		                       				<label for="majorGrade">학점</label>
		                       				<input type="text" name="majorGrade" id="majorGrade">
	                       			</div>
	                       			<div class="selectbox major_totalgrade">
		                        				<label style="margin-left: -10px; ">총점</label>
		                        				<select style="letter-spacing: -1px; padding-left: 15px; margin-left: 0; border-left: 0;">
		                        					<option value="4.5">4.5</option>
		                        					<option value="4.3">4.3</option>
		                        					<option value="4.0">4.0</option>
		                        					<option value="100">100</option>
		                        				</select>
	                       			</div>
	                        	</div>
                        	</div>
                        	<button class="plus_btn_front"><img alt="plus" src="../image/resume_img/plus_btn.png" id="award_btn">추가</button>
                        </div>
                        <!-- 경력 -->
                         <div class="formWrap career">
                        	<h2 class="formheader">경력</h2> 
                        	<div class="form formcareer">
                        		<div class="row">
                        			<div class="input value company" style="width: 278px;">
			                       				<label for="company">회사명</label>
			                       				<input type="text" name="company" id="company">
	                       			</div>
                        			<div class="input value division" style="width: 278px; margin-left: 0; border-left: 0;">
			                       				<label for="division">부서명</label>
			                       				<input type="text" name="division" id="division">
	                       			</div>
                        			<div class="input value joincom" style="width: 115px;">
			                       				<label for="joincom">입사년월</label>
			                       				<input type="text" name="joincom" id="joincom" placeholder="2016.03">
	                       			</div>
                        			<div class="input value resigncom" style="width: 115px; margin-left: 0; border-left: 0;">
			                       				<label for="resigncom">퇴사년월</label>
			                       				<input type="text" name="resigncom" id="resigncom" placeholder="2016.06">
	                       			</div>
                        		</div>
                        		<button class="x_btn" id="award_x">&times;</button>
                        		<div class="row">
                        			<div class="input value position" style="width: 278px;">
			                       				<label for="position">직급/직책</label>
			                       				<input type="text" name="position" id="position">
	                       			</div>
	                       			<div class="input value duty" style="width: 278px; margin-left: 0; border-left: 0;">
			                       				<label for="duty">직무</label>
			                       				<input type="text" name="duty" id="duty">
	                       			</div>
	                       			<div class="input value sal" style="width: 115px;">
			                       				<label for="joincom">연봉</label>
			                       				<input type="text" name="sal" id="sal" placeholder="">
	                       			</div>
                        		</div>
                        		<div class="row">
	                       			<div class="input value businesswork" style="width: 898px; height: 122px;">
			                       				<label for="businesswork">담당업무</label>
			                       				<input type="text" name="businesswork" id="businesswork" placeholder="담당하신 업무와 성과에 대해 간단명료하게 적어주세요.">
	                       			</div>
                        		</div>
                        	</div>
                        	<button class="plus_btn_front"><img alt="plus" src="../image/resume_img/plus_btn.png" id="award_btn">추가</button>
                        </div>
                        <!-- 인턴 대외활동 -->
                        <div class="formWrap intern">
                        	<h2 class="formheader">인턴·대외활동</h2> 
                        	<div class="form formintern">
                        		<div class="row">
                        			<div class="selectbox intern_activity" style="width: 115px; margin: 0;">
		                        				<label style="margin-left: -10px;">활동구분</label>
		                        				<select style="letter-spacing: -1px; padding-left: 15px;">
		                        					<option value="인턴">인턴</option>
		                        					<option value="아르바이트">아르바이트</option>
		                        					<option value="동아리">동아리</option>
		                        					<option value="자원봉사">자원봉사</option>
		                        					<option value="사회활동">사회활동</option>
		                        					<option value="교내활동">교내활동</option>
		                        				</select>
	                       			</div>
                        			<div class="input value interncompany" style="width: 514px; border-left: 0;">
			                       				<label for="interncompany">회사/기관/단체명</label>
			                       				<input type="text" name="interncompany" id="interncompany">
	                       			</div>
	                       			<div class="input value startintern" style="width: 115px;">
			                       				<label for="startintern">시작년월</label>
			                       				<input type="text" name="startintern" id="startintern" placeholder="2016.03">
	                       			</div>
                        			<div class="input value endintern" style="width: 115px; margin-left: 0; border-left: 0;">
			                       				<label for="endintern">종료년월</label>
			                       				<input type="text" name="endintern" id="endintern" placeholder="2016.06">
	                       			</div>
                        		</div>
                        		<button class="x_btn" id="award_x">&times;</button>
                        		<div class="row">
	                       			<div class="input value interncontent" style="width: 898px; height: 122px;">
			                       				<label for="interncontent">활동내용</label>
			                       				<input type="text" name="interncontent" id="interncontent" placeholder="직무와 관련된 경험에 대해 (상황 - 노력 - 결과)순으로 작성하는 것이 좋습니다.">
	                       			</div>
                        		</div>
                        	</div>
                        	<button class="plus_btn_front"><img alt="plus" src="../image/resume_img/plus_btn.png" id="award_btn">인턴·대외활동 추가</button>
                        </div>
                        <!-- 교육 -->
                        <div class="formWrap learning">
                        	<h2 class="formheader">교육</h2> 
                        	<div class="form formlearning">
                        		<div class="row">
                        			<div class="input value learningname" style="width: 310px;">
			                       				<label for="learningname">교육명</label>
			                       				<input type="text" name="learningname" id="learningname">
	                       			</div>
                        			<div class="input value learningorgan" style="width: 310px;">
			                       				<label for="learningorgan">교육기관</label>
			                       				<input type="text" name="learningorgan" id="learningorgan">
	                       			</div>
	                       			<div class="input value startlearning" style="width: 115px;">
			                       				<label for="startlearning">시작년월</label>
			                       				<input type="text" name="startlearning" id="startlearning" placeholder="2016.03">
	                       			</div>
                        			<div class="input value endlearning" style="width: 115px; margin-left: 0; border-left: 0;">
			                       				<label for="endlearning">종료년월</label>
			                       				<input type="text" name="endlearning" id="endlearning" placeholder="2016.06">
	                       			</div>
                        		</div>
                        		<button class="x_btn" id="award_x">&times;</button>
                        		<div class="row">
                        			<div class="input value learningcontent" style="width: 898px; height: 122px;">
			                       				<label for="learningcontent">교육내용</label>
			                       				<input type="text" name="learningcontent" id="learningcontent" placeholder="이수하신 교육과정에 대해 적어주세요.">
	                       			</div>
                        		</div>
                        	</div>
                    	    <button class="plus_btn_front"><img alt="plus" src="../image/resume_img/plus_btn.png" id="award_btn">교육 추가</button>
                        </div>
                        <!-- 자격증 -->
                        <div class="formWrap license">
                        	<h2 class="formheader">자격증</h2> 
                        	<div class="form formlicense">
                        		<div class="row">
                        			<div class="input value licensename" style="width: 450px;">
			                       				<label for="licensename">자격증명</label>
			                       				<input type="text" name="licensegname" id="licensename">
	                       			</div>
                        			<div class="input value licensepublish" style="width: 284px;">
			                       				<label for="licensepublish">발행처</label>
			                       				<input type="text" name="licensepublish" id="licensepublish">
	                       			</div>
	                       			<div class="input value startlearning" style="width: 115px;">
			                       				<label for="startlearning">시작년월</label>
			                       				<input type="text" name="startlearning" id="startlearning" placeholder="2016.03">
	                       			</div>
                        		</div>
                        		<button class="x_btn" id="award_x">&times;</button>
                        	</div>
                        	<button class="plus_btn_front"><img alt="plus" src="../image/resume_img/plus_btn.png" id="award_btn">자격증 추가</button>
                        </div>
                  </form>
            </div>
      </div>
</body>
</html>
<%@include file="resume.jsp" %>

                        		
                        		