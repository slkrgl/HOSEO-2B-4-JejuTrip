<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title></title>
</head>
<body>



<div>
<center>
<form method="post" action="joinMember_Action.jsp">
<table>
	
	
	<tr>
		<td>이름</td>
		<td><input type="text" name="name"></td>
	</tr>
	
	<tr>
		<td>아이디</td>
		<td><input type="text" name="id"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="password">
	</tr>
	
	<tr>
		<td>비밀번호 확인</td>
		<td><input type="password" name="re_password"></td>
	</tr>
						
	<tr>
		<td>전화번호</td>
		<td><input type="text" style="width: 46px" name="phone1">-<input type="text" style="width: 80px" name="phone2">-<input type="text" style="width: 80px" name="phone3"></td>
	</tr>
	
	<tr>
		<td>이메일</td>
		<td><input type="text" name="e_mail1">@<input type="text" name="e_mail2"></td>
	</tr>
	
	<tr>
		<td>전체주소</td>
		<td><input type="text" style="width: 500px;" name="address1"></td>
	</tr>
	
	<tr>
		<td>상세주소</td>
		<td><input type="text" style="width: 500px;" name="address2"></td>
	</tr>

</table>
<input type="submit" value="회원가입">
</form>
</center>
</div>


</body>
</html>

