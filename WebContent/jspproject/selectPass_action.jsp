<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "member.*" %>
    <% request.setCharacterEncoding("utf-8"); %>
    <jsp:useBean id="memberBean" class="member.SelectPass" scope="page"/>
	<jsp:setProperty name="memberBean" property="*" />
<%
	Db_sql dbc = new Db_sql();
	String password = dbc.SelectPass(memberBean);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SH케피탈</title>
</head>
<body>

    
<div>
	<center>
		<table>
			<tr>
			<%if(!password.equals("")){ %>
				<td colspan="3" style="font-weight: 600;font-size: 40px;"><%= memberBean.getName() %>님의 비밀번호는 <u><%= password %></u>입니다.</td>
				<% } else { %>	
				<td colspan="3" style="font-weight: 600;font-size: 40px;">입력하신 정보와 일치하는 정보가 없습니다.</td>
			</tr>
			<tr>
				<td colspan="3" style="font-weight: 600;font-size: 40px;"> 입력하신정보를 확인해주세요.</td>
				<%} %>
			</tr>
		</table>
		<input type="button" value="메인으로" class="button" onClick="javascript:location.href='index.jsp'">
	</center>
</div>


</body>
</html>
