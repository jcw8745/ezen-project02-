<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
 	width: 250px;
 	text-align: left;
 }
</style>
</head>
<body>
<h2>회원 탈퇴</h2>
<form action="memberDelete.do" method="post" name="frm">

<table>
<tr>
<td>이름 </td>
<td><input type="text" name="name" size="20"
value="${mVo.name }" ></td>
</tr>

<tr>
<td>아이디</td>
<td>
<input type="text" name="id" size="20" value="${mVo.id }" ></td>
</tr>

<tr>
<td>암&nbsp;호 </td>
<td> <input type="password" name="pwd" size="20" >*</td>
</tr>
<tr height="30">
<td width="80">암호 확인</td>
<td><input type="password" name="pwd_check" size="20">*</td>
</tr>




<tr>
<td colspan="2" align="center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" value="확인" onclick="return memberdeletebutton()" >
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset" value="취소">


</td>
</tr>


</table>
</form>

</body>
</html>