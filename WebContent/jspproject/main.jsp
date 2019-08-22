<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="main.css" rel="stylesheet" type="text/css">
<link href="test.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="test1.js"></script>
<script type="text/javascript" src="test2.js"></script>
<script type="text/javascript" src="test3.js"></script>

</head>
<body>
	<!--상단 메뉴바-->
	<div class="header">
    	<div class="top-header">
        	<div class="top-menu">
                <ul class="m01">
                	<li><a href="#">예약확인</a></li>
                    <li>|</li>        
                    <li><a href="joinMember.jsp">회원가입</a></li>
                    <li>|</li>          	
                    <li><a href="loginInput.jsp">로그인</a></li>  
                    <li>|</li>          	
                    <li><a href="main.jsp">Home</a></li>                  
                </ul>
            <div class="top-menu2">
                <ul>
                    <li><a href="#">숙박</a>
                    	<ul>
                            <li><a href="#">호텔</a></li>
                            <li><a href="#">펜션</a></li>
                            <li><a href="#">리조트</a></li>
                        </ul>
                    </li>
                    <li><a href="#" id="current">렌트카</a>
                        <ul>
                            <li><a href="#">소형 & 준준형</a></li>
                            <li><a href="#">중형</a></li>
                            <li><a href="#">대형</a></li>
                        </ul>
                    </li>
                    <li><a href="#">관광지</a>
                    	<ul>
                            <li><a href="#">해안코스</a></li>
                            <li><a href="#">산악코스</a></li>
                            <li><a href="#">박물관</a></li>
                            <li><a href="#">맛집</a></li>
                        </ul>
                    </li>
                    <li><a href="#">커뮤니티</a>
                    	<ul>
                            <li><a href="#">자유게시판</a></li>
                            <li><a href="#">이용후기</a></li>
                        </ul>
                    </li>
                    <li><a href="#">고객센터</a>
                    	<ul>
                            <li><a href="#">공지사항</a></li>
                            <li><a href="#">Q & A</a></li>
                            <li><a href="#">문의사항</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            </div>
        </div>
    </div>

<!--중단 메뉴바-->

<!--j쿼리 영역-->
<!--
<div id="subflash_html">
	<div id="slideshow5" class="slideshow-wrapper2">
		<div class="slideshow-wrapper-box2">
			<div class="wrapper-li" rel='0' out="img/icon02.gif" over="img/icon01.gif" >
				<div class="part zindex10" rel=0><a href="" target="_parent">
				<img src="img/picture1.PNG" width="100%" height="670px" /></a>
                </div>
			</div>
			<div class="wrapper-li" rel='0' out="img/icon02.gif" over="img/icon01.gif" >
				<div class="part zindex10" rel=0><a href="" target="_parent">
				<img src="img/picture2.PNG" width="100%" height="670px" /></a>
                </div>
			</div>
			<div class="wrapper-li" rel='0' out="img/icon02.gif" over="img/icon01.gif" >
				<div class="part zindex10" rel=0><a href="" target="_parent">
				<img src="img/picture3.PNG" width="100%" height="670px" /></a>
                </div>
			</div>				
		</div>		  
	</div>
    -->
<!-- j쿼리 javascript -->
<!--
	<script type="text/javascript">
        $(window).ready(function() {  
            var options = {};
                options['animSpeed'] = 1500; //애니시간
                options['pauseTime'] = 6000; //대기시간
                options['moveType'] = 'left'; //이동방향   top or bottom
                options['tailType'] = 'images'; //tail 버튼   number or images
                $("#slideshow5").hdamall2effect(options);
        });
    </script> -->
    <div class="slideshow-container">

  <!-- Full-width images with number and caption text -->
  <div class="mySlides fade">
    <div class="numbertext">1 / 3</div>
    	<img src="../jspproject/img/pone.png" width="100%" height="600">
    <div class="text">Caption Text</div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">2 / 3</div>
    	<img src="../jspproject/img/ptwo.png" width="100%" height="600">
    <div class="text">Caption Two</div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">3 / 3</div>
    	<img src="../jspproject/img/pthree.png" width="100%" height="600">
    <div class="text">Caption Three</div>
  </div>

  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
  
  <div class="dott">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>
<script type="text/javascript" src="test4.js"></script>
</div>
</body>
</html>