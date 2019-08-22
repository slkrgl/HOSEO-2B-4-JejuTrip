<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="member.Db_sql"%>
    <% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="memberBean" class="member.Member" scope="page"/>
<jsp:setProperty name="memberBean" property="*" />
<%
	Db_sql dbc = new Db_sql();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>


<div>
<center>
<%if(dbc.joinMem(memberBean)) {%>
<table>
	<tr>
		<td colspan="2" style="font-weight: 600;font-size: 40px;">회원가입완료</td>
	</tr>
	
	<tr>
		<td>이름</td>
		<td><%= memberBean.getName() %></td>
	</tr>
						
	<tr>
		<td>아이디</td>
		<td><jsp:getProperty name="memberBean" property="id"/></td>
	</tr>
						
	<tr>
		<td>비밀번호</td>
		<td>****</td>
	</tr>
			
	
						
	<tr>
		<td>핸드폰번호</td>
		<td><%= memberBean.getPhone1() %>-<%= memberBean.getPhone2() %>-<%= memberBean.getPhone3() %></td>
	</tr>
	
	<tr>
		<td>이메일</td>
		<td><%= memberBean.getE_mail1() %>@<%= memberBean.getE_mail2() %></td>
	</tr>
						
	<tr>
		<td>전체주소</td>
		<td><%= memberBean.getAddress1() %></td>
	</tr>
	
	<tr>
		<td>상세주소</td>
		<td><%= memberBean.getAddress2() %></td>
	</tr>
	
	
						
</table>
<%} else{ %>
<table class="box">
	<tr>
		<td colspan="3" style="font-weight: 600;font-size: 40px;">이미 존재하는 아이디입니다.</td>
	</tr>
</table>
<% } %>
<input type="button" value="확인" class="button" onClick="javascript:location.href='index.jsp'">
</center>
</div>

