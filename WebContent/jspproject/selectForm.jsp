<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SH케피탈</title>
<style>

.button{
width: 80%;
height: 50px;

}

.tblbleck {
	border-collapse: collapse;
	text-align: left;
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
.tblbleck td{
padding-left:20px;
}

</style>
</head>
<body>

<br><br>			
					<center>
					<div>
					<form action="selectId_action.jsp" method="post">
						<table class="tblbleck" width=500px>
							<tr>
								<td align="center" colspan="4" style="font-weight: 500;font-size: 30px;">아이디찾기</td>
							</tr>
							<tr >
								<td width="20%" align="left">이름</td>
								<td align="left" width="300px;"><input type="text" name="name"></td>
								<td rowspan="3" style="width: 110px;"><input type="submit" value="아이디찾기" class="button"></td>
								<td></td>
							</tr>
							<tr>
								<td align="left">휴대폰 번호</td>
								<td align="left"><input type="text" name="phone1" style="width: 40px;">-<input type="text" name="phone2" style="width: 50px;">-<input type="text" name="phone3" style="width: 50px;"></td>
								<td></td>
							</tr>
							<tr>
								<td align="left">이메일</td>
								<td align="left"><input type="text" name="e_mail1" style="width: 100px;">@<input type="text" name="e_mail2" style="width: 80px;"></td>
								<td></td>
							</tr>
							
						</table>
						</form>
						</div>
					</center>
					
					<br><br><br>
					
					<center>
					<div>
					<form action="selectPass_action.jsp" method="post">
						<table class="tblbleck" width=500px>
							<tr>
								<td colspan="3" style="font-weight: 500;font-size: 40px;">비밀번호찾기</td>
								
							</tr>
							<tr>
								<td width="114px;">ID</td>
								<td align="left"  width="256px;"><input type="text" name="id"></td>
								<td></td>
							</tr>
							<tr>
								<td width="20%">이름</td>
								<td align="left" width="300px;"><input type="text" name="name"></td>
								<td width="20%"><input type="submit" value="비밀번호 찾기" class="button" ></td>
							</tr>
							<tr>
								<td align="left">휴대폰 번호</td>
								<td align="left"><input type="text" name="phone1" style="width: 40px;">-<input type="text" name="phone2" style="width: 50px;">-<input type="text" name="phone3" style="width: 50px;"></td>
								<td></td>
							</tr>
							
							<tr>
								<td align="left">이메일</td>
								<td align="left"><input type="text" name="e_mail1" style="width: 100px;">@<input type="text" name="e_mail2" style="width: 80px;"></td>
								<td></td>
							</tr>
						</table>
						</form>
						</div>
					</center>
					
					
</body>
</html>
