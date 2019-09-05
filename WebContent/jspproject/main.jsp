<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<%
	String id="";
try{
	id = (String)session.getAttribute("id");
	if(id==null||id.equals("")){
		%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="test.css" rel="stylesheet" type="text/css">
<link href="main.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="test1.js"></script>
<script type="text/javascript" src="test2.js"></script>
<script type="text/javascript" src="test3.js"></script>

</head>
<body>
	<%@include file="top.jsp" %>
			<%
	}else{
%>
<%@include file="toplogon.jsp" %>

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

<%
	}
}catch(Exception e){
	e.printStackTrace();
}
%>
