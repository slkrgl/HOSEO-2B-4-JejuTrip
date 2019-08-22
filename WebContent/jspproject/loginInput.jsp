<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>

.button{
width: 80%;
height: 60px;

}

.tblbleck {
	border-collapse: collapse;
	text-align: center;
	font-family: 'Trebuchet MS';
}
.tblbleck td, th {
	font-size: 10pt;
	background-color:rgb(109,109,109);
	height: 30px;
}
.tblbleck th {
	background-color:#000000;
	color:#000000;
	font-family: Georgia;
}
.tblbleck tr.alt td {
	color:#000000;
	background-color:#EAF2D3;
}
.tblbleck caption {
	height: 30px;
	text-align: left;
	font-weight: bold;
}
</style>
</head>
<body>

					<center>
					<div>
						<table class="tblbleck" width="50%">
							<tr>
								<td colspan="3" style="font-weight: 600;font-size: 40px;">로그인</td>
							</tr>
							<tr>
								<form action="login_Action.jsp" method="post">
								<td width="20%">아이디</td>
								<td width="60%"><input type="text" name="id"></td>
								<td rowspan="2"><input type="submit" value="로그인" class="button"></td>
							</tr>
							<tr>
								<td width="20%">비밀번호</td>
								<td width="60%"><input type="password" name="passwd"></td>
							</tr>
							</form>
							
							<tr>
								<td><a href="joinMember.jsp"><input type="submit" value="회원가입"></a></td>
								<td><a href="selectForm.jsp"><input type="button" style="width: 208px" value="아이디/비밀번호찾기"></a></td>
								<td></td>
							</tr>
						</table>
						</div>
					</center>
					
				

</body>
</html>
