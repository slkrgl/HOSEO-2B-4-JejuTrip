<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@page import = "member.*" %>
    
    <jsp:useBean id="memberBean" class="member.Login" scope="page"/>
	<jsp:setProperty name="memberBean" property="*" />
<% request.setCharacterEncoding("utf-8");
	
	
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	Db_sql logon = Db_sql.getInstance();
	int check=logon.Login(id,passwd);
	if(check ==1){
	session.setAttribute("id",id);
	response.sendRedirect("main.jsp");
	}else if(check == 0){%>
	<script>
	alert("비밀번호가 맞지 않습니다.");
	history.go(-1);
	</script>
	<%}else{ %>
	<script>
	alert("아이디가 맞지 않습니다...");
	history.go(-1);
	</script>
	<%} %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title></title>
</head>
<body>

</body>
</html>

