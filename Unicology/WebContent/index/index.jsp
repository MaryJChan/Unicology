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
      /* Main */
      #Main_img_box{
            width: 100%;
            height: 550px;
            background-image:url(../image/index_Img/Main-img.jpg);
            background-repeat: no-repeat;
            background-position: center;
      }
      #Main_img{
            width: 100%;
            height: 600px;
      }
      #Main_subject_box{
            text-align: center;
            padding: 15px 0 35px 0;
            height: 60px;
            line-height:60px;
            width: 100%;
            background-color: #353535;
      }
      .Main_subject{
            color: white;
            display: inline-block;
      }
      #Main_subject1{
            font-size: 35px;
            font-family: 'Archivo Black', sans-serif;
      }
      #Main_subject2{
            font-size: 29px;
            font-family: 'Roboto Slab', serif;
            font-family: 'Archivo Black', sans-serif;
            margin-left: 50px;
      }
      .Main_rhom{
            width: 100%;
            height:180px;
            text-align: center;
            padding-top: 17px;
      }
      .Main_rhom > a > img{
            width: 310px;
            margin: 0 30px;
      }
      a{
            cursor: pointer;
      }
      #Index_function_info_wrap{
            width: 80%;
            height: 1000px;
            margin:0 auto;
            border: 1px solid red;
      }
      #point_subject{
            color:#27C7C6;
            font-size: 25px;
            text-align: center;     
            padding-bottom: 10px;
      }
</style>
<script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
      $(document).ready(function(){
            
            
            /* hover기능 추가하기 !! */
            
            // 기업자소서 이동
            $("#coverletter").on("click",function(){
                  alert("기업자소서페이지로 이동할예정"); 
            });
            
            // 자소서핵심키워드 이동
            $("#keyword").on("click",function(){
                  alert("자소서핵심키워드로 이동할예정"); 
            });
            
            // 자기소개서작성 이동
            $("#write").on("click",function(){
                  alert("자기소개서작성으로 이동할예정"); 
            });
            
            // 마이페이지 이동
            $("#mypage").on("click",function(){
                  alert("마이페이지로 이동할예정");
            });
            
            // 이력서관리 이동
            $("#resume").on("click",function(){
                  alert("이력서관리로 이동할예정");
            });
      });
</script>
</head>
<body>
      <%@include file="../include/header.jsp"%>
      
      <!-- Main_img -->
      <div id="Main_img_box">
            
            <div class="Main_rhom">
                  <a href="#" id="coverletter"><img alt="rhombus"src="../image/index_Img/rhombus1.png"></a>
                  <a href="#" id="write"><img alt="rhombus"src="../image/index_Img/rhombus3.png"></a>
                  <a href="#" id="resume"><img alt="rhombus"src="../image/index_Img/rhombus5.png"></a>
            </div>
            <div class="Main_rhom">
                  <a href="#" id="keyword"><img alt="rhombus"src="../image/index_Img/rhombus2.png"></a>
                  <a href="#" id="mypage"><img alt="rhombus"src="../image/index_Img/rhombus4.png"></a>
            </div>
      </div>
      
      <!-- Main-img-bottom -->
      <div id="Main_subject_box">
            <div>
                  <div id="point_subject">3가지의 핵심기능</div>
            </div>
            <div class="Main_subject" id="Main_subject1">핵심 KEYWORD ,</div>
            <div class="Main_subject" id="Main_subject2">자소서도 Smart하게</div>
      </div>
      
      <!-- Main_info -->
      <div id="Index_function_info_wrap">
            
      </div>
      
      <%@include file="../include/footer.jsp"%>
</body>
</html>