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

div{

margin-left:auto;
margin-right:auto;
}
#btnbtn{
width:300px;
margin:auto;
display:block;
}


</style>
</head>
<body>
<h2>비밀번호 찾기</h2>
<form action="memberfindpwd.do" method="get" name="frm">

<div class="row">
<div class="col-md-10 inputbb">
<div class="form-group has-danger">
<div class="input-group mb-2 mr-sm-2 mb-sm-0">
<input type="text" name="id" class="form-control" id="id" placeholder="아이디" required autofocus>

</div>
</div>
</div>
</div>



<div class="row">
<div class="col-md-10 inputbb">
<div class="form-group has-danger">
<div class="input-group mb-2 mr-sm-2 mb-sm-0">
<input type="text" name="name" class="form-control" id="name" placeholder="이름" required autofocus>

</div>
</div>
</div>
</div>

<div class="row">
<div class="col-md-10 inputbb">
<div class="form-group">
<div class="input-group mb-2 mr-sm-2 mb-sm-0">
<input type="text" name="phone" class="form-control" id="phone" placeholder="전화번호" required>

</div>
</div>
</div>
</div>

<div class="row">
<div class="col-md-10 inputbb">
<button type="submit" class="btn btn-outline-secondary findbtn" id="btnbtn">찾기</button>
</div>
</div>
</form>

</body>
</html>