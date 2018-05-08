<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
      $(document).ready(function(){
            if($("#award_title").val()!= ""){
                  $("#award_title").focus(function(){
                        $("#award_title_label").animate({top:"25"}, 20);
                  });
                  $("#award_title").blur(function(){
                        $("#award_title_label").animate({top:"25"}, 50);
                  });
            }else if($("#award_title").val()== ""){
                  $("#award_title").focus(function(){
                        $("#award_title_label").animate({top:"25"}, 20);
                  });
            }
      });
</script>
<style type="text/css">
      body,ul{
            margin: 0;
            padding: 0;
      }
      button{
            cursor: pointer;
      }
      .resume_page{
            background-color: #ececec;
            width: 100%;
            padding-bottom: 50px;
      }
      .resume_inner_page{
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
      .award_title{
            margin-bottom: 14px;
            color: #333;
            font-weight: bold;
            font-size: 20px;
            width: 75%;
      }
      #award_container{
            width: 78%;
            background-color: #fff;
            border:1px solid #dbe0e9;
            box-sizing: border-box;
            padding: 20px;
            position: relative;
      }
      .award{
            height: 62px;
            margin-left: 10px;
            border: 1px solid #ddd;
            box-sizing: border-box;
            text-align: left;
            display: inline-block;
            outline: none;
            font-size: 16px;
            padding: 0 15px;
      }
      .award_div{
            display: inline-block;
      }
      #award_title{
            width: 380px;
            margin-bottom: 10px;
      }
      #award_inst{
            width: 254px;
      }
      #award_year{
            width: 115px;
      }
      .test_div, #test{
            width: 80%;
            height: 100px;
            border:1px solid red;
      }
      .test_div{
            position: relative;
      }
      #test_label{
            position: absolute;
            left: 35px;
            top: 50px;
            transition:all 1s ease .1s;
      }
      .x_btn{
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
      #award_content_div{
            border: 1px solid #dbe0e9;
            width: 100%;
            margin-left: 10px;
            padding: 10px 0;
      }
      #award_content{
            box-sizing: border-box;
            display: block;
            width: 100%;
            height: 56px;
            padding: 10px 15px;
            border: 0;
            color: #333;
            outline: none;
            font-size: 16px;
      }
      #award_content_label{
            color: #999;
            transition: all 0.2s ease-out;
            font-size: 11px;
            padding: 5px 15px;
      }
      #award_title_label{
            position: absolute;
            top:40px;
            left:50px;
            color: gray;
            font-size: 14px;
      }
      #award_inst_label{
            position: absolute;
            top:40px;
            left:445px;
            color: gray;
            font-size: 14px;
      }
      #award_year_label{
            position: absolute;
            top:40px;
            left:710px;
            color: gray;
            font-size: 14px;
      }
      #award_btn{
            width: 20px;
            height: 20px;
            vertical-align: middle;
            padding: 0 8px;
      }
      .plus_btn{
            margin-bottom: 34px;
            width: 78%;
            height: 50px;
            text-align: center;
            line-height: 50px;
            border-top: 1px solid #eee;
            box-sizing: border-box;
            background-color: #fff;
            border: none;
            font-size: 16px;
      }
      #abroad_container{
            width: 78%;
            background-color: #fff;
            border: 1px solid #dbe0e9;
            box-sizing: border-box;
            padding: 20px;
            position: relative;
      }
      #abroad_btn{
            width: 20px;
            height: 20px;
            vertical-align: middle;
            padding: 0 8px;
      }
      
      /* 해외경험 */
      .abroad_title{
            margin-bottom: 14px;
            color: #333;
            font-weight: bold;
            font-size: 20px;
            width: 75%;
      }
      #country_name_label{
            position: absolute;
            top: 40px;
            left: 50px;
            color: gray;
            font-size: 14px;
      }
      #country_name{
            width:50%;
            height: 60px;
            color: #333;
            outline: none;
            padding: 0 30px 0 15px;
            box-sizing: border-box;
            font-size: 16px;
            border: 1px solid #ddd;
            background-color: #fff;
            margin-left: 10px;
            display: inline-block;
            margin-bottom: 10px;
      }
      #country_start_label{
            position: absolute;
            top: 40px;
            left: 515px;
            color: gray;
            font-size: 14px;
      }
      #country_start{
            width:20%;
            height: 60px;
            color: #333;
            outline: none;
            padding: 0 30px 0 15px;
            box-sizing: border-box;
            font-size: 16px;
            border: 1px solid #ddd;
            background-color: #fff;
            margin-left: 10px;
            display: inline-block;
      }
      #country_end_label{
            position: absolute;
            top: 40px;
            left: 710px;
            color: gray;
            font-size: 14px;
      }
      #country_end{
            width:20%;
            height: 60px;
            color: #333;
            outline: none;
            padding: 0 30px 0 15px;
            box-sizing: border-box;
            font-size: 16px;
            border: 1px solid #ddd;
            background-color: #fff;
            margin-left: 10px;
            display: inline-block;
      }
      #abroad_content_label{
            color: #999;
            font-size: 11px;
            padding: 5px 15px;
      }
      #abroad_content{
            box-sizing: border-box;
            display: block;
            width: 100%;
            height: 56px;
            padding: 10px 15px;
            border: 0;
            color: #333;
            outline: none;
            font-size: 16px;
      }
      #abroad_content_div{
            border: 1px solid #dbe0e9;
            width: 100%;
            margin-left: 10px;
            padding: 10px 0;
      }
      
      /* 어학 */
      .select{
            padding: 17px 15px;
            color: #a8a8a8;
            white-space: nowrap;
            text-overflow: ellipsis;
            font-size: 15px;
            text-align: left;
            height: 100%;
            margin: -2px;
      }
      
      /* 포트폴리오 */
      #portfolio{
            display: inline-block;
            width: 70.4%;
      }
      #portfolio_container{
            width: 78%;
            background-color: #fff;
            border: 1px solid #dbe0e9;
            box-sizing: border-box;
            padding: 20px;
            position: relative;
            margin-bottom: 34px;
      }
      #my_file{
            width:82px;
            height: 32px;;
            margin-left:5px;
            background-color: #fff;
            border: 1px solid #dbe0e9;
            font-size: 12px;
            text-align: center;
            color: #888;
      }
      .file_btn{
            margin-left: 0;
            width: 49.5%;
            height:62px;
            background-color: #f9fcff;
            display: inline-block;
            border: 1px solid #ddd;
            padding: 17px 0;
            margin-bottom: 13px;
            font-size: 16px;
            color: #999;
            text-align: center;
      }
      
      /* 취업우대 */
      .select2{
            padding: 17px 15px;
            color: #a8a8a8;
            white-space: nowrap;
            text-overflow: ellipsis;
            font-size: 15px;
            text-align: left;
            height: 100%;
            width:20%;
            margin: 2px;
      }
      
      /* 우측 메뉴바 */
      .menu_bar{
            width: 16%;
            height: 535px;
            position: fixed;
            right: 152px;
            top: 50px;
            background-color: #fff;
      }
      .resume_header{
            font-size: 14px;
            color: #999;
            padding: 16px 14px 0 14px;
            text-align: left;
            height: 32px;
      }
      .resume_plus_btn{
            width:100%;
            height: 48px;
            font-size: 14px;
            color: #999;
            box-sizing: border-box;
            background-color: #fff;
            border: none;
            text-align: left;
            padding: 16px 14px 0 14px;
      }
      #resume_plus_btn_top{
            border-top: 1px solid #eee;
      }
      .plus{
            width: 20px;
            height: 20px;
            float: right;
      }
      .menu_middle_bar{
            width: 16%;
            height: 50px;
            position: fixed;
            right: 152px;
            top: 590px;
            background-color: #fff;
            text-align: center;
            line-height: 50px;
            font-size: 16px;
            font-weight: bold;
      }
      .menu_bottom_bar{
            width: 16%;
            height: 50px;
            position: fixed;
            right: 152px;
            top: 640px;
            background-color: #3599FD;
            text-align: center;
            line-height: 50px;
            color: #fff;
            font-size: 16px;
            font-weight: bold;
      }
      #resume_plus_btn_bottom{
      }
</style>
</head>
<body>
      <!-- .unicology로 임의로 정함 -->
      <div class="resume_page">
            <div class="resume_inner_page">
                  <form action="resume_insert.unicology" method="post">
                        
                        <!-- 수상 -->
                        <div class="award_title">수상</div>
                        <div class="container" id="award_container">
                              <div class="award_div">
                                    <label for="award_title" id="award_title_label">수상명</label>
                                    <input type="text" name="award_title" id="award_title" class="award" maxlength="50">
                              </div>
                              <div class="award_div">
                                    <label for="award_inst" id="award_inst_label">수여기관</label>
                                    <input type="text" name="award_inst" id="award_inst" class="award">
                              </div>
                              <div class="award_div">
                                    <label for="award_year" id="award_year_label">연도</label>
                                    <input type="text" name="award_year" id="award_year" class="award">
                              </div>
                              <button class="x_btn" id="award_x">&times;</button>
                              <div class="award_div" id="award_content_div">
                                    <label id="award_content_label" for="award_content">
                                          수여내용
                                          <textarea name="award_content" id="award_content" cols="30" rows="10" placeholder="수여 내용 및 결과를 자세히 입력해주세요."></textarea>
                                    </label>
                              </div>
                        </div>
                        <button class="plus_btn"><img alt="plus" src="../image/resume_img/plus_btn.png" id="award_btn">수상추가</button>
                        
                        <!-- 해외경험 -->
                        <div class="abroad_title">해외경험</div>
                        <div class="container" id="abroad_container">
                              <label for="country_name" id="country_name_label">국가명</label>
                              <input type="text" id="country_name">
                              <label for="country_start" id="country_start_label">시작년월</label>
                              <input type="text" id="country_start">
                              <label for="country_end" id="country_end_label">종료년월</label>
                              <input type="text" id="country_end">
                              <button class="x_btn" id="award_x">&times;</button>
                              <div class="abroad_div" id="abroad_content_div">
                                    <label id="abroad_content_label" for="abroad_content">
                                          내용
                                          <textarea name="abroad_content" id="abroad_content" cols="30" rows="10" placeholder="해외에서 어떤 경험을 했는지 자세히 적어주세요.(ex.어학연수, 워킹홀리데이, 교한학생, 해외근무)"></textarea>
                                    </label>
                              </div>
                              
                        </div>
                        <button class="plus_btn"><img alt="plus" src="../image/resume_img/plus_btn.png" id="abroad_btn">해외경험 추가</button>
                        
                        <!-- 어학 -->
                        <div class="abroad_title">어학</div>
                        <div class="container" id="abroad_container">
                              <select name="kind" id="kind" class="select">
                                    <option value="">구분</option>
                                    <option value="회화능력">회화능력</option>
                                    <option value="공인시험">공인시험</option>
                              </select>
                              <select name="language_kind" id="language_kind" class="select" class="select">
                                    <option value="">외국어명</option>
                                    <option value="영어">영어</option>
                                    <option value="일본어">일본어</option>
                                    <option value="중국어">중국어</option>
                                    <option value="독일어">독일어</option>
                                    <option value="프랑스어">프랑스어</option>
                                    <option value="스페인어">스페인어</option>
                                    <option value="러시아어">러시아어</option>
                                    <option value="이탈리아어">이탈리아어</option>
                                    <option value="아랍어">아랍어</option>
                                    <option value="태국어">태국어</option>
                                    <option value="마인어">마인어</option>
                                    <option value="그리스어">그리스어</option>
                                    <option value="포르투갈어">포르투갈어</option>
                                    <option value="힌디어">힌디어</option>
                                    <option value="노르웨이어">노르웨이어</option>
                                    <option value="유고어">유고어</option>
                                    <option value="히브리어">히브리어</option>
                                    <option value="이란(페르시아어)">이란(페르시아어)</option>
                                    <option value="터키어">터키어</option>
                                    <option value="체코어">체코어</option>
                                    <option value="루마니아어">루마니아어</option>
                                    <option value="몽골어">몽골어</option>
                                    <option value="스웨덴어">스웨덴어</option>
                                    <option value="헝가리어">헝가리어</option>
                                    <option value="폴란드어">폴란드어</option>
                                    <option value="미얀마어">미얀마어</option>
                                    <option value="슬로바키아어">슬로바키아어</option>
                                    <option value="세르비아어">세르비아어</option>
                              </select>
                              <select name="language_level" id="language_level" class="select">
                                    <option value="">회화능력</option>
                                    <option value="일상회화 가능">일상회화 가능</option>
                                    <option value="비즈니스 회화가능">비즈니스 회화가능</option>
                                    <option value="원어민 수준">원어민 수준</option>
                              </select>
                              <button class="x_btn" id="award_x">&times;</button>
                              
                        </div>
                        <button class="plus_btn"><img alt="plus" src="../image/resume_img/plus_btn.png" id="abroad_btn">어학 추가</button>
                        
                        <!-- 포트폴리오 -->
                        <div class="abroad_title" id="portfolio">포트폴리오</div>
                        <button id="my_file">내 파일함</button>
                        <div class="container" id="portfolio_container">
                              <button class="file_btn" id="urlplus_btn">URL 추가<img alt="plus" src="../image/resume_img/plus_btn.png" id="abroad_btn"></button>
                              <button class="file_btn" id="urlplus_btn">파일 추가<img alt="plus" src="../image/resume_img/plus_btn.png" id="abroad_btn"></button>
                        </div>
                        
                        <!-- 취업우대 -->
                        <div class="abroad_title">취업우대</div>
                        <div class="container" id="abroad_container">
                              <select name="bohun" id="bohun" class="select2">
                                    <option value="">보훈대상</option>
                                    <option value="대상">대상</option>
                                    <option value="비대상">비대상</option>
                              </select>
                              <select name="job_protection" id="Job_protection" class="select2">
                                    <option value="">취업보호대상</option>
                                    <option value="대상">대상</option>
                                    <option value="비대상">비대상</option>
                              </select>
                              <select name="subsidy" id="subsidy" class="select2">
                                    <option value="">고용지원금 대상</option>
                                    <option value="대상">대상</option>
                                    <option value="비대상">비대상</option>
                              </select>
                              <select name="obstacle" id="obstacle" class="select2">
                                    <option value="">장애여부</option>
                                    <option value="대상">대상</option>
                                    <option value="비대상">비대상</option>
                              </select>
                              <select name="obstacle" id="obstacle" class="select2">
                                    <option value="">병역</option>
                                    <option value="군필">군필</option>
                                    <option value="미필">미필</option>
                                    <option value="면제">면제</option>
                                    <option value="해당없음">해당없음</option>
                              </select>
                        </div>
                        
                        <!-- 우측menu bar -->
                        <div class="menu_bar">
                              <div class="resume_header">이력서 항목</div>
                              <div>
                                    <button type="button" class="resume_plus_btn" id="resume_plus_btn_top">학력<img alt="plus" src="../image/resume_img/plus.png" class="plus"></button>
                                    <button type="button" class="resume_plus_btn">경력<img alt="plus" src="../image/resume_img/plus.png" class="plus"></button>
                                    <button type="button" class="resume_plus_btn">인턴/대외활동<img alt="plus" src="../image/resume_img/plus.png" class="plus"></button>
                                    <button type="button" class="resume_plus_btn">교육<img alt="plus" src="../image/resume_img/plus.png" class="plus"></button>
                                    <button type="button" class="resume_plus_btn">자격증<img alt="plus" src="../image/resume_img/plus.png" class="plus"></button>
                                    <button type="button" class="resume_plus_btn">수상<img alt="plus" src="../image/resume_img/plus.png" class="plus"></button>
                                    <button type="button" class="resume_plus_btn">해외경험<img alt="plus" src="../image/resume_img/plus.png" class="plus"></button>
                                    <button type="button" class="resume_plus_btn">어학<img alt="plus" src="../image/resume_img/plus.png" class="plus"></button>
                                    <button type="button" class="resume_plus_btn">포트폴리오<img alt="plus" src="../image/resume_img/plus.png" class="plus"></button>
                                    <button type="button" class="resume_plus_btn" id="resume_plus_btn_bottom">취업우대<img alt="plus" src="../image/resume_img/plus.png" class="plus"></button>
                              </div>
                        </div>
                        <div class="menu_middle_bar">임시저장</div>
                        <div class="menu_bottom_bar">작성완료</div>
                  </form>
            </div>
      </div>
</body>
</html>