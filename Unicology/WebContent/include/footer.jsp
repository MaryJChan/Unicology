<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Archivo+Black|Roboto+Slab');
@import url(http://api.mobilis.co.kr/webfonts/css/?fontface=NanumGothicWeb);
      /* footer */
      body{
            margin: 0;
            padding: 0;
            cursor: pointer;
      }
      a{
            text-decoration: none;
            cursor: pointer;
      }
      #footer_box{
            width: 100%;
            height: 200px;
            background-color: #999999;
            position: relative;
      }
      #logo_name{
            display: inline-block;
            width: 30%;
            height: 200px;
            border: 1px solid blue;
      }
      #footer_info_wrap{
            display: inline-block;
            width: 70%;
            height: 200px;
            border: 1px solid black;
            position: absolute;
      }
      .footer_info_top_wrap{
            display: inline-block;
            margin-left:30px;
            padding: 40px 0 25px 10px;
            width: 96%;
            border-bottom: 1px solid #666666;
      }
      .footer_info_top{
            display: inline-block;
            color: white;
            padding: 0 10px;
            font-size: 13px;
      }
      #footer_info_top_bar2{
            border: 0.5px solid #999999;
            font-size: 9px;
      }
      .footer_info_bottom_wrap{
            margin-left:30px;
            padding-left: 10px;
            padding-top: 15px;
            font-size: 13px;
            color: white;
      }
      .footer_info_bottom{
            display: inline-block;  
            padding: 5px 10px;
      }
      #last_width1{
            width: 250px;
      }
      #last_width2{
            width: 450px;
      }
      #top_btn{
            width: 40px;
            height: 40px;
            background-color: #e7e7e7;
            position: absolute;
            top: 20px;
            right: 50px;
            border-radius:2px;
            text-align: center;
      }
      .top_btn{
            width: 40px;
            color: black;
            text-align: center;
      }
</style>
<script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
    window.onscroll = function(){scrollFunction()};
   
    function scrollFunction(){
          if(document.body.scrollTop > 20 || document.documentElement.scrollTop > 20){
               document.getElementById("top_btn").style.display="block";
          }else{
               document.getElementById("top_btn").style.display="none";
          }
    }
   
    function topFunction(){
          document.body.scrollTop = 0;
          document.documentElement.scrollTop = 0;
    }
</script>
</head>
<body>
      <!-- Footer -->
      <div id="footer_box">
            <div id="logo_name">
                  <a href="#">LOGO자리</a>
            </div>
            <div id="footer_info_wrap">
                  <div class="footer_info_top_wrap">
                        <a href="#" class="footer_info_top" id="com_info">회사소개</a>
                        <span id="footer_info_top_bar2"></span>
                        <a href="#" class="footer_info_top" id="com_use_term">이용약관</a>
                        <span id="footer_info_top_bar2"></span>
                        <a href="#" class="footer_info_top" id="com_privacy">개인정보취급방침</a>
                  </div>
                  <div class="footer_info_bottom_wrap">
                        <div class="footer_info_bottom">유니콜로지 광주광역시 북구 중흥1동 경양로 170</div>
                        <span id="footer_info_top_bar2"></span>
                        <div class="footer_info_bottom">전화:062-345-1023</div>
                        <span id="footer_info_top_bar2"></span>
                        <div class="footer_info_bottom">팩스:062-345-1024</div>
                        <span id="footer_info_top_bar2"></span>
                        <div class="footer_info_bottom" id="last_width1">Email:unicology@gmail.com</div>      
                        <div class="footer_info_bottom">사업자등록번호:123-98-45678</div>
                        <span id="footer_info_top_bar2"></span>
                        <div class="footer_info_bottom" id="last_width2">대표:유니콘</div>          
                        <div class="footer_info_bottom">COPYRIGHTⓒunicology.co.kr　　ALL LIGHT RESERVED DESIGNED BY UNIQOLOGY</div>      
                        <div id="top_btn">
                              <a class="top_btn" href="#">▲</a>
                              <a class="top_btn" href="#">TOP</a>
                        </div>      
                  </div>
            </div>
      </div>
</body>
</html>