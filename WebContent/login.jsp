<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style2.css">
<script src="jquery-3.4.1.js"></script>
</head>
<body>
<section class="login-form">
<h1>LOGIN</h1>
<form action="">
<div class="int-area">
<input type="text" name="id" id="id"
autocomplete="off" required>
<label for="id">USER ID</label>
</div>
<div class="int-area">
<input type="password" name="pw" id="pw"
autocomplete="off" required>
<label for="pw">PASSWORD</label>
</div>
<div class="btn-area">
<button type="submit">LOGIN</button>
</div>
</form>
<div class="caption">
<a href="">forgot Password?</a>
<div class="caption">
<a href="member_input.jsp">join to be a member</a>
</div>

</body>
</html>