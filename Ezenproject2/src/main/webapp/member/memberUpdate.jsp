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
table{
margin-left:auto;
margin-right:auto;
}
 td{
 	border: 1px solid;black;
 	width: 220px;
 	text-align: center;
 }
</style>
</head>
<body>
<h2>회원 수정</h2>
<form action="memberUpdate.do" method="post" name="frm">

<table>
<tr>
<td>이름 </td>
<td><input type="text" name="name" size="20"
value="${loginUser.name }" readonly></td>
</tr>

<tr>
<td>아이디</td>
<td>
<input type="text" name="id" size="20" value="${loginUser.id }" readonly></td>
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
<td>전화번호</td>
<td><input type="text" name="phone" size="20" value="${mVo.phone }"></td>
</tr>

<tr>
<td>이메일</td>
<td><input type="text" name="email" size="20" value="${mVo.email }"></td>
</tr>



<tr>
<td>성별</td>
<td>
<c:choose>
<c:when test="${loginUser.gender==0 }">
<input type="radio" name="gender" value="0" checked="checked"> 남자
<input type="radio" name="gender" value="1">여자
</c:when>

<c:otherwise>
<input type="radio" name="gender" value="0">남자
<input type="radio" name="gender" value="1" checked="checked">여자
</c:otherwise>
</c:choose>

</td>
</tr>

<tr>
<td>나이</td>
<td><input type="text" name="age" size="3" value="${mVo.age }"></td>
</tr>


<tr>
<td>등급</td>
<td>
<c:choose>
<c:when test="${loginUser.admin==0 }">
<input type="radio" name="admin" value="0" checked="checked">일반회원
<input type="radio" name="admin" value="1">관리자
</c:when>

<c:otherwise>
<input type="radio" name="admin" value="0">일반회원
<input type="radio" name="admin" value="1" checked="checked">관리자
</c:otherwise>
</c:choose>

</td>
</tr>




<tr>
<td colspan="2" align="center">
<input type="submit" value="확인" onclick="return joinCheck()" >

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset" value="취소">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" value="회원탈퇴" onclick="location.href='memberDelete.do'">

</td>
</tr>


</table>
</form>

</body>
</html>