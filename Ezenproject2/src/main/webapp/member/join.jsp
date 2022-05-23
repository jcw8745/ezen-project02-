<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/member1.js"></script>
<style type="text/css">
h2 { text-align: center; }
h4{text-align:center;}

table{
margin-left:auto;
margin-right:auto;
}
 td{
 	border: 1px solid;black;
 	width: 300px;
 	text-align: left;
 }
</style>
</head>
<body>

<h2>회원 가입</h2>

<form action="join.do" method="post" name="frm">
<table>


<tr>
<td><b>아이디</b></td>
<td>
<input type="text" name="id" size="20" id="id">*
<input type="hidden" name="reid" size="20" >
<input type="button" value="중복 체크" onclick="idCheck()">
</td>
</tr>

<tr>
<td><b>암호</b></td>
<td><input type="password" name="pwd" size="20">*</td>
</tr>

<tr height="30">
<td width="80"><b>암호 확인</b></td>
<td><input type="password" name="pwd_check" size="20">*</td>
</tr>

<tr>
<td><b>이름</b> </td>
<td><input type="text" name="name" size="20">*</td>
</tr>



<tr>
<td><b>전화번호</b></td>
<td><input type="text" name="phone" size="20"></td>
</tr>

<tr>
<td><b>이메일</b></td>
<td><input type="text" name="email" size="20"></td>
</tr>




<tr>
<td><b>성별</b></td>
<td>
<input type="radio" name="gender" value="0" checked="checked">남자
<input type="radio" name="gender" value="1" >여자
</td>
</tr>

<tr>
<td><b>나이</b></td>
<td><input type="text" name="age" size="2"></td>
</tr>

<tr>
<td><b>등급</b></td>
<td>
<input type="radio" name="admin" value="0" checked="checked">일반회원
<input type="radio" name="admin" value="1" >관리자
</td>
</tr>

<tr>
<td colspan="2" align="center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" value="확인" onclick="return joinCheck()">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset" value="취소">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" value="돌아가기" onclick="location.href='login.do'">
</td>
</tr>

<tr>
<td colspan="2">${message }</td>
</tr>

</table>


</form>

</body>
</html>