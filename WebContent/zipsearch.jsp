<%@ page import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="member.jejuDB" %>   
<Script>
	function AutoInput(zip,address){
		zip1 = zip.substring(0,3);
		zip2 = zip.substring(4,7);
		opener.nform.zip1.value = zip1;
		opener.nform.zip2.value = zip2;
		opener.nform.address1.value = address;
		self.close();
	}
</Script>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색결과</title>
</head>

<center>이미지</center>

<table align=center border=0>
	<tr>
		<td bgcolor="#A3ACD5" width=100><font size=2><center>우편번호
		</center></font></td>
		<td dgcolor="#A3ACD5" width=350><font size=2><center>주소
		</center></font></td>
	<tr>
<%
	jejuDB usedb = new jejuDB(); //DB빈 클래스의 오브젝트화
	request.setCharacterEncoding("utf-8");
	
	usedb.connect(); //빈 클래스를 이용한 데이터베이스 접속
	String dong = request.getParameter("dong");
	
	String sql = "select * from zipcode where dong like '%"+dong+"%'";//질의생성
	ResultSet rs = usedb.resultQuery(sql); // 빈 클래스를 이용한 질의 실행
	
	if(rs.next()) { //질의 결과 출력
		do{
			String zip = rs.getString("ZIPCODE");
			String sido = rs.getString("SIDO");
			String gugun = rs.getString("GUGUN");
			String don = rs.getString("DONG");
			String ri = rs.getString("RI");
			String bunji = rs.getString("BUNJI");
			if(ri == null) ri="";
			if(bunji == null) bunji="";
			String address = sido + "" + gugun + "" + don + ""+ ri+""+bunji; 
%>

<tr>
	<td bgcolor="#eeeeee"><center><font size=2>
		<a href="JacaScript:AutoInput('<%=zip%>', '<%=address%>')"><%=zip %></a>
		</font></center></td>
	<td vgcolor="#eeeeee">&nbsp;&nbsp;&nbsp;
		<font size=2><a href"../jspproject/joinMember.jsp"><a href="JavaScript:AutoInput('<%=zip %>','<%=address %>')">
		<%=address %></a></a></font></td>
</tr>
<%
		}while(rs.next());
%>
</table>
<%
	}
	else
	{
%>
</talbe>
<font size=2><center><br>찾고자하는 동이 존재하지 않습니다.<br><br><br>
	다시 검색 하시려면<a href=ZipInputForm.html>요기</a>를 누르세요~</center></font>
	<%
	}
	%>
<br><br><br>
<center><a href="JavaScript:self.close()">닫기</a></center>
<body>

</body>
</html>