<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Header</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Archivo+Black|Roboto+Slab');
@import url(http://api.mobilis.co.kr/webfonts/css/?fontface=NanumGothicWeb);
      body{
            margin:0;
            padding:0;
            font-family: 'NanumGothic', '나눔고딕','NanumGothicWeb', '맑은 고딕', 'Malgun Gothic', Dotum;
      }
      #Header_box{
            height: 160px;
            position: relative;
      }
      #Header_top_wrap{
            display: inline-block;
            position: absolute;
            right: 80px;
            top:10px;
      }
      .Header_inner{
            display: inline-block;
            color:#999999;
            text-decoration: none;
            font-weight: 700;
      }
      #Header_bar{
            font-size: 3px;
            border: 0.5px solid #666666;
            height:23px;
            line-height: 23px;
            margin: 0 10px 0 5px;
      }
      #Header_contact{
            margin:5px;
            position: relative;
      }
      #Header_imag{
            width:20px;
            position: absolute;
            top:-13px;
            left: -1px;
      }
      #Header_logo{
            width: 100%;
            text-align: center;
            position: absolute;
            top: 15px;
      }
      .Header_logo{
            cursor: pointer;
            display: inline-block;
            width: 27%;
      }
      #Header_logo_img{
            width: 350px;
      }
      #Header_bottom{
            width:100%;
            height: 50px;
            position: absolute;
            bottom: 0;
            border-top: 1.2px solid #999999;
            border-bottom: 2px solid #999999;
            font-weight: 700;
      }
      #Header_bottom_inner{
            cursor: pointer;
            height: 50px;
            width: 530px;
            position: absolute;
            right: 60px;
      }
      .Header_bottom_inner{
            text-decoration: none;
            color: #999999;
            height: 50px;
            line-height: 50px;
      }
      .Header_bottom_img{
            text-decoration: none;
            color: #666666;
            padding-left: 10px;
      }
      #Header_bottom_img{
            height: 22px;
      }
      .Header_bottom_rowbar{
            height: 50px;
            border-right: 1.2px solid #999999;
            display: inline-block;
            padding-right: 10px;
      padding-left: 3px;
      }
      #Header_bottom_view{
            border-left: 1.2px solid #999999;
            height: 50px;
            display: inline-block;
            padding-right: 5px;
      padding-left: 10px;
      }
      .Header_bottom_rowimg{
            height: 50px;
            display: inline-block;
      }
</style>
</head>
<body>
      <!-- Header -->
      <div id="Header_box">
            
            <!-- Header_top  -->
            <div id="Header_top">
                  <div id="Header_top_wrap">
                        <a href="#" class="Header_inner" id="Header_login">로그인</a>
                        <span id="Header_bar"></span>
                        <a href="#" class="Header_inner" id="Header_member">회원가입</a>
                        <span id="Header_bar"></span>
                        <a href="#" class="Header_inner" id="Header_mypage">마이페이지</a>
                        <span id="Header_bar"></span>
                        <a href="#" class="Header_inner" id="Header_contact"><img alt="letter_img" src="../image/index_Img/header-letter.png" id="Header_imag"></a>
                  </div>
            </div>      
            
            <!-- Header_logo -->
            <div id="Header_logo">
                  <a href="#" class="Header_logo"><img alt="logo" src="../image/index_Img/LOGO1.png" id="Header_logo_img"></a>
            </div>
            
            <!-- Header_bottom -->
            <div id="Header_bottom">
                  <div id="Header_bottom_inner">
                        <div class="Header_bottom_rowbar"><a href="#" class="Header_bottom_inner" id="Header_bottom_view">기업자소서</a></div>
                        <div class="Header_bottom_rowbar"><a href="#" class="Header_bottom_inner" id="Header_bottom_keyword">자소서핵심키워드분석</a></div>
                        <div class="Header_bottom_rowbar"><a href="#" class="Header_bottom_inner" id="Header_bottom_writing">자소서작성</a></div>
                        <div class="Header_bottom_rowbar"><a href="#" class="Header_bottom_inner" id="Header_bottom_admin">이력서관리</a></div>
                        <div class="Header_bottom_rowimg"><a href="#" class="Header_bottom_img"><img alt="Header_hamberger" src="../image/index_Img/hemberger.png" id="Header_bottom_img"></a></div>
                  </div>
            </div>
      </div>
</body>
</html>