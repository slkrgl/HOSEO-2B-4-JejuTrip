<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	*{
	margin:0;
	padding:0;
	color: #000;
	text-decoration: none;
}
#header {
	width: 100%;
	height: 180px;
}
#header2 {
	width:100%;
	height:30px;	
	background-color:#FFC90E;
}
#topnav {
	width: 100%;
	float: right;
	height: 30px;
}
#j01{
	list-style: none;
	margin-right:20%;
}
#j02 {
	font-family: "휴먼편지체";
	float: right;
	list-style-type: none;
	font-size: 13pt;
	font-weight: 200;
	color:#ffffff;
	margin-right: 30px;
	text-decoration: none;
	margin-top: 6px;
}
#logo {
	float: left;
	margin-left: 20%;
	margin-right: 6%;
}
#promotion {
	width:43%; 
	height:130px;
}
#line{
	width:100%;
	height:2px;
	background-color:#A29D9E;
}








#center {
	width:920px;
	height:100%;
	margin:0 auto;
	
}
#search {
	width:400px;
	height:40px;
	border:1px solid #FFC90E;
	background:#ffffff;
	margin-bottom:20px;
}
#se {
	font-size: 16px;
	width:325px;
	padding: 10px;
	border: 0px;
	outline: none;
	float:left;
}
#bu { 
	width:50px;
	height:100%;
	border:0px;
	background:#FFC90E;
	outline: none;
	float:right;
	color:#ffffff;
}
#zero {
	width:920px;
	height::500px;
	float:left;
}
#first {
	width:184px;
	height:185px;
	float: left;
}
#name {
	width:920px;
	height:184px;
}
#name2 {
	width:920px;
	height:60px;
	background-color:#ffc90e;	
	
}
#table {
	text-align:center;
	margin:auto;
	width:300px;
	height:60px;
}


#bottomnav {
	width:100%;
	height:150px;
	clear: both;
	background-color:#FFC90E;
	margin-top:20px;
}
#host {
	width:900px;
	clear:both;
	float:left;
	margin-left:22%;
}
	
</style>
</head>
<body>
	<div id="header">
    	<div id="header2">
        	<div id="topnav">
                <ul id="j01">
                	<li id="j02"><a href="joinMember.jsp">회원가입</a></li>
                    <li id="j02"><a href="loginInput.jsp">로그인</a></li>
                    <li id="j02"><a href="index.jsp">Home</a></li>                    
                </ul>
            </div>
        </div>
        <div id="logo"><img src="img/logo.PNG" width="230" height="130"></div>
        <div id="promotion"></div>
        <div id="line"></div>
    </div>
    
    <div id="center">
   	  	<div id="search">
        	<input id="se" type="search" placeholder="숙박 / 렌트카 / 관광지">
            <button id="bu"><a href="#">검색</a></button>
        </div>
        <div id="name">
        	<div id="first"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image22','','img/lodge2.png',1)"><img src="img/lodge.png" width="100%" heigth="100%" id="Image22"/></a>
           </div>
           <div id="first"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image21','','img/hired vehicle2.png',1)"><img src="img/hired vehicle.png" width="100%" heigth="20%" id="Image21"/></a>
           </div>
           <div id="first"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image20','','img/sights2.png',1)"><img src="img/sights.png" width="100%" heigth="20%" id="Image20"/></a>
           </div>
           <div id="first"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image19','','img/community2.png',1)"><img src="img/community.png" width="100%" heigth="20%" id="Image19"/></a>
           </div>
           <div id="first"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image18','','img/customer2.png',1)"><img src="img/customer.png" width="100%" heigth="20%" id="Image18"/></a>
           </div>
        </div>
        <div id="name2">
            <table id="table" border="0" >
                 <tr>
                    <td><a href="#"><h3>호텔</h3></a></td>
                    <td></td>
                    <td><a href="#"><h3>리조트</h3></a></td>
                    <td></td>
                    <td><a href="#"><h3>펜션</h3></a></td>
                </tr>
            </table>
        </div>
    </div>
    
    <div id="bottomnav">
    	<div id="host">
        	<img src="img/bottomnav.png">
        </div>
    </div>
</body>
</html>