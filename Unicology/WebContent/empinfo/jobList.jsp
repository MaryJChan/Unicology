<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
      $(document).ready(function() {
      
            $("#searchSpread").on("click", function() {
                  alert("상세검색 펼치기 클릭!!"); 
                  $("#spread_area").css("display","block");
                  $("#searchSpread").css("display","none");
            });
      });
</script>
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
      #jobListContainer {
            width: auto;
            /* background-color: #f8f8f8; */
            min-height: 100%;
            padding: 20px 0 60px;
      }
      
      /* 컨텐츠 영역(높이 수정할것) */
      #inner_jogList {
            position: static;
            width: 1200px;
            margin: 0 auto;
            height: 1800px;
      }
      
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
          position: relative;
          margin: 26px 0 0 22px;
      }
      
      #searchKeyword_job input{
            
            width: 291px;
          height: 32px;
          border: 1px solid #aaa;
          box-sizing: border-box;
          font-size: 13px;
          letter-spacing: -1px;
          line-height: 30px;
      }
      
      #searchMain_wrap {
            position: relative;
            width: 966px;
            
      }
      
      .subBox_wrap {
            overflow: hidden;
          position: relative;
          z-index: 130;
          margin-top: 28px;
          width: 966px;
          border: 2px solid #6b80f1;
          box-sizing: border-box;
          background: #fff;
          margin-top: 36px;
      }
      
      .searchMain_category > li {
          float: left;
          min-height: 36px;
      }
      
      .searchMain_category > li > a {
            display: block;
      position: absolute;
          top: 0;
          padding: 7px 0 10px;
          border: 1px solid #dfdfdf;
          box-sizing: border-box;
          color: #444;
          font-size: 13px;
          letter-spacing: -1px;
          line-height: 17px;
          text-align: center;
          background: #f9f9f9;
          width: 138px;
      }
      .sub_box {
            /* display: none; */
          overflow: hidden;
          position: relative;
          box-sizing: border-box;
          background: #fff;
          margin-bottom: 12px;
      }
      
      .subBox_category {
            padding: 12px 22px;
      }
      
      .subBox_category li {
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
      
      /* 직종 세부 카테고리 영역  */
      .sub_depth_box {
            background-color: #dfdfdf;
      }
      
      .subBox_depth_category  {
            padding: 12px 22px 5px;
          border-top: 1px solid #dfdfdf;
      }
      
      /* 첫번째줄 카테고리 ul  */
      .searchMain_category {
            position: relative;     
      }
      
      .searchMain_category:AFTER {
            display: table;
            clear: both;
            content: "";
      }
      
      /* 두번째줄 카테고리 ul  */
      .searchMainSecond_category {
            position: relative;
            display: table;
            clear: both;
      }
      
      .searchMainSecond_category > li {
            float: left;
            min-height: 36px;
      }
      
      .searchMainSecond_category > li > a {
          display: block;
          /* position: absolute; */
          top: 0;
          padding: 7px 0 10px;
          border: 1px solid #dfdfdf;
          box-sizing: border-box;
          color: #444;
          font-size: 13px;
          letter-spacing: -1px;
          line-height: 17px;
          text-align: center;
          background: #f9f9f9;
          width: 138px;
            
      }
      
      /* 상세검색 펼치기  */
      #searchSpread_wrap {
            text-align: center;
            margin-bottom: 30px;
      }
      
      /* 상세 검색 접기  */
      #searchFold_wrap {
          margin-top: -1px;
      text-align: center;
      display: none;
      }
      #searchFold {
            padding: 3px 0 6px;
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
            overflow: hidden;
          position: absolute;
          bottom: 0;
          left: 0;
          top: 295px;
          margin-right: 104px;
          padding-left: 104px;
          height: 92px;
          border: 1px solid #888;
          box-sizing: border-box;
          background: #fff;
    }
   
    #searchTotal_result{
          position: absolute;
          top: 50%;
          left: 0;
          margin: -22px 0 0 0;
          width: 100px;
          text-align: center;
    }   
   
    #searchTotal_result > p {
          margin: 0;
          color: #444;
          font-size: 13px;
          font-weight: bold;
   
    }
   
    #searchTotal_all {
        display: block;
          margin-top: 7px;
          color: #6b80f1;
          font-size: 17px;
          font-weight: bold;
          line-height: 20px;
    }
   
    #searchSelect_result {
          position: relative;
          margin: 7px 0;
          width: 750px;
          min-height: 76px;
          border-left: 1px solid #eee;
    }
   
    .result_guide {
        padding: 18px 0 0 18px;
          color: #888;
          font-size: 12px;
    }
   
    .result_guide > li > span {
      color: #6b80f1;
    }
   
    #init_wrap {
          position: absolute;
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
          overflow: hidden;
          position: absolute;
          bottom: 0;
          right: 0;
          width: 104px;
          height: 92px;
          text-align: center;
          background: #888;
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
   
      #searchSpread_wrap > a {
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
      
      /* 상세 검색 패널  */
      #spread_area {
            border: 1px solid #ebebeb;
          border-top: 0 none;
          background: #f9f9f9;
          display: none;
      }
      
      /*  근무지역 */
      #workArea_title {
          float: left;
          width: 86px;
          color: #444;
          font-size: 13px;
          font-weight: bold;
          letter-spacing: -1px;
          line-height: 32px;
      }
      
      #workArea_list_wrap {
            float: left;
          position: relative;
          width: 842px;
          font-size: 0;
          margin-top: 19px;
      }
      
      #workArea_list_wrap > ul > li {
            float: left;
      min-height: 32px;
      padding: 2px 3px;
      }
      
      #workArea_list_wrap > ul > li >  a {
            display: block;
          top: 0;
          padding: 5px 24px 9px 24px;
          border: 1px solid #dfdfdf;
          box-sizing: border-box;
          color: #444;
          font-size: 13px;
          letter-spacing: -1px;
          text-align: center;
          background: #fff;
      }
      
      /* 경력  */
      #career_title {
            float: left;
          width: 86px;
          color: #444;
          font-size: 13px;
          font-weight: bold;
          letter-spacing: -1px;
          line-height: 32px;
      }
      
      #career_list_wrap {
            float: left;
          position: relative;
          width: 842px;
          font-size: 12px;
          margin: 20px 0;
      }
      
      .txt_check {
            line-height: 16px;
            vertical-align: top;
      }
      
      /* 학력  */
      #degree_title {
          float: left;
      width: 86px;
          color: #444;
          font-size: 13px;
          font-weight: bold;
          letter-spacing: -1px;
          line-height: 32px;
      }
      #degree_wrap {
            float: left;
          position: relative;
          width: 842px;
          margin-top: 19px;
          font-size: 13px;
      }
      
      /* 연봉 */
      #salary_title {
            float: left;
          width: 86px;
          color: #444;
          font-size: 13px;
          font-weight: bold;
          letter-spacing: -1px;
          line-height: 32px;
      }
      
      #salary_wrap {
          float: left;
          position: relative;
          width: 842px;
          font-size: 0;
      }
      /* 채용공고 리스트  */
      #recruit_list {
            position: relative;
            width: 966px;
            margin-top: 135px;
      }
      
      
      .tabArea {
            display: block;
          position: relative;
          margin-bottom: 20px;
          padding: 0;
          border-bottom: 1px solid #666;
          letter-spacing: -1px;
      }
      
      .tabArea > li {
          display: block;
          float: left;
          position: relative;
          z-index: 1;
          width: 20%;
      }  
      
      .tabArea > li > a {
          display: block;
          position: relative;
          margin-left: -1px;
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
      
      .listArea {
            position: relative;
      }
      
      #list_info {
            position: relative;
          margin-bottom: 10px;
          height: 32px;
          top: 17px;    
      }
      
      .infoSelect {
            display: inline-block;
            width: 114px;
            position: relative;
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
            position: absolute;
          top: 20px;
          right: 0;
      }
      
      #apply_btn {
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
      
      .recruit_board {
          width: 100%;
          border-top: 1px solid #eaeaea;
          border-spacing: 0;
          border-collapse: collapse;
          table-layout: fixed;
          margin-top: 56px;
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
   
    .deadline_info > p > a {
        border: 1px solid #ff8d5a;
          color: #fff;
          background: #ff8d5a;
          display: inline-block;
          width: 65px;
          height: 16px;
          font-family: "Malgun Gothic",맑은고딕 !important;
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
      
      #paginate_ol li > a {
            width: 25px;
            padding: 5px 0;
            font-size: 12px;
      }
      
      .active {
            background-color: #9d9d9d;
      }
</style>
<body>
      <div id="jobListContainer">
            <div id="inner_jogList">
                  <div id="wrap_title">
                        <h1 id="jobTitle">직업별(직종)</h1>
                        <div id="searchKeyword_job">
                              <input type="text" placeholder="직종을 검색하세요">
                        </div>      
                  </div>
                  
                  <!-- 검색 카테고리  -->
                  <form action="" id="search_panel_form" name="search_panel_form">
                        <div id="searchMain_wrap">
                              <ul class="searchMain_category">
                                    <li>
                                          <a href="#">경영·사무</a>
                                          <div class="subBox_wrap">
                                                <div class="sub_box">
                                                      <ul class="subBox_category">
                                                            <li><a href="#">기획·전략·경영<em class="txt_count">(1,899)</em></a></li>
                                                            <li><a href="#">마케팅 광고분석(4,277)</a></li>
                                                            <li><a href="#">홍보PR사보<em class="txt_count">(1,899)</em></a></li>
                                                            <li><a href="#">경리출납결산<em class="txt_count">(1,899)</em></a></li>
                                                            <li><a href="#">회계재무세무IR<em class="txt_count">(1,899)</em></a></li>
                                                            <li><a href="#">총부법무사무<em class="txt_count">(1,899)</em></a></li>
                                                            <li><a href="#">비서안내수행원<em class="txt_count">(1,899)</em></a></li>
                                                            <li><a href="#">인사교육노무<em class="txt_count">(1,899)</em></a></li>
                                                            <li><a href="#">사무보조문서작성<em class="txt_count">(1,899)</em></a></li>
                                                            <li><a href="#">전시컨벤션세미나<em class="txt_count">(1,899)</em></a></li>
                                                      </ul>
                                                </div>
                                                <div class="sub_depth_box">
                                                      <ul class="subBox_depth_category">
                                                            <li><label for="all"><input type="checkbox" id="all" name="all"><span>전체</span></label></li>
                                                      </ul>
                                                </div>
                                          </div>
                                          
                                    </li>
                                    <li><a href="#">영업·고객상담</a></li>
                                    <li><a href="#">IT·인터넷</a></li>
                                    <li><a href="#">디자인</a></li>
                                    <li><a href="#">서비스</a></li>
                                    <li><a href="#">전문직</a></li>
                                    <li><a href="#">의료</a></li>
                              </ul>
                              
                              <ul class="searchMainSecond_category">
                                    <li><a href="#">생산·제조</a></li>
                                    <li><a href="#">건설</a></li>
                                    <li><a href="#">유통·무역</a></li>
                                    <li><a href="#">미디어</a></li>
                                    <li><a href="#">교육</a></li>
                                    <li><a href="#">특수계층·공공</a></li>
                              </ul>
                              
                              <!-- 상세 검색 펼치기  -->
                              <div id="searchSpread_wrap">
                                    <a id="searchSpread" href="#">상세검색 펼치기▽</a>
                              </div>
                              
                              <!-- 상세 검색 접기  -->
                              <div id="searchFold_wrap">
                                    <a id="searchFold" href="#">상세검색 접기△</a>
                              </div>
                              
                              <!-- 선택 검색 영역  -->
                              <div id="search_preview">
                                    <div id="searchTotal_result">
                                          <p>검색결과</p><strong id="searchTotal_all">전체</strong>
                                    </div>
                                    <div id="searchSelect_result">
                                          <ul class="result_guide">
                                                <li>선택조건을 모아, 검색결과 건수를 미리 볼 수 있습니다.</li>
                                                <li>선택하지 않은 조건은 <span>'전체'</span> 로 검색됩니다. </li>
                                          </ul>
                                          <div id="init_wrap">
                                                <a href="#">선택 초기화</a>
                                          </div>
                                    </div>
                                    <div id="result_btn">
                                          <a id="searchBtn" href="#">검색하기</a>
                                    </div>
                                    
                              </div>
                              
                              <!-- 상세 검색 패널  -->
                              <div id="spread_area">
                                    <!-- 근무지역  -->
                                    <div id="workArea">
                                          <h2 id="workArea_title">근무지역</h2>
                                          <div id="workArea_list_wrap">
                                                <ul>
                                                      <li><a href="#">서울</a></li>
                                                      <li><a href="#">경기</a></li>
                                                      <li><a href="#">인천</a></li>
                                                      <li><a href="#">부산</a></li>
                                                      <li><a href="#">대구</a></li>
                                                      <li><a href="#">광주</a></li>
                                                      <li><a href="#">대전</a></li>
                                                      <li><a href="#">울산</a></li>
                                                      <li><a href="#">세종</a></li>
                                                      <li><a href="#">강원</a></li>
                                                </ul>
                                                
                                                <ul>
                                                      <li><a href="#">경남</a></li>
                                                      <li><a href="#">경북</a></li>
                                                      <li><a href="#">전남</a></li>
                                                      <li><a href="#">전북</a></li>
                                                      <li><a href="#">충남</a></li>
                                                      <li><a href="#">충북</a></li>
                                                      <li><a href="#">제주</a></li>
                                                      <li><a href="#">전국</a></li>
                                                </ul>
                                          </div>
                                    </div>
                                    <!-- 경력  -->
                                    <div id="careerArea">
                                          <h2 id="career_title">경력</h2>
                                          <div id="career_list_wrap">
                                                <label for="newcomer">
                                                      <input type="checkbox" class="input_check" id="newcomer" name="newcomer"><span class="txt_check">신입</span>
                                                </label>
                                                <label for="career">
                                                      <input type="checkbox" class="input_check" id="career" name="career"><span class="txt_check">경력</span>
                                                </label>
                                                
                                                <label for="noExperience">
                                                      <input type="checkbox" class="input_check" id="noExperience" name="noExperience"><span class="txt_check">경력무관</span>
                                                </label>
                                          </div>
                                    </div>
                                    
                                    <!--학력  -->
                                    <div id="degreeArea">
                                          <h2 id="degree_title">학력</h2>
                                          <div id="degree_wrap">
                                                <select>
                                                      <option>대학교졸업(4년)</option>
                                                      <option>대학졸업(2,3년)</option>
                                                      <option>대학원 석사졸업</option>
                                                      <option>대학원 박사졸업</option>
                                                      <option>고등학교 졸업</option>
                                                </select>
                                                <label for="noDegree">
                                                      <input type="checkbox"><span class="txt_check">학력무관</span>
                                                </label>
                                          </div>
                                    </div>
                              </div>      
                        </div>
                  </form>
                  
                  <!-- 채용공고 리스트  -->
                  
                  <div id="recruit_list">
                        <ul class="tabArea">
                              <li><a href="#" class="tabOn">전체(${empInfoDto.size()}건)</a></li>
                              <li><a href="#">1000대기업</a></li>
                              <li><a href="#">정규직</a></li>
                              <li><a href="#">계약직</a></li>
                              <li><a href="#">인턴직</a></li>
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
                              
                              <c:forEach items="${jobList}" var="empInfoDto"> 
                                    <tr>
                                          <td>
                                                <label class="chk_recruit">
                                                      <input type="checkbox">
                                                </label>
                                          </td>
                                          <td class="company_name">
                                                <a href="#">${empInfoDto.companyName}</a>
                                          </td>
                                          <td class="notification_info">
                                                <div class="job_title">
                                                      <a href="#">
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
</body>
<%@include file="../include/footer.jsp"%>
</html>