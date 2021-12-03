<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<HTML>
 <HEAD>

<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="style2.css">
<script src="jquery-3.4.1.js"></script>
 <SCRIPT language="JavaScript">
 function Check()  /*펑션은 자바스크립트*/
 {
 if (Member_Input.id.value.length < 1) { /*멤버안에 아이디안에.값이.없냐 라는소리--*/
 alert("아이디를 입력하세요.");
 Member_Input.id.focus();
 return false;
 }
 if (Member_Input.pass.value.length < 1) {
 alert("비밀번호를 입력하세요.");
 Member_Input.pass.focus();
 return false;
 }
 if (Member_Input.name.value.length < 1) {
 alert("이름을 입력하세요.");
 Member_Input.name.focus();
 return false;
 }
 Member_Input.submit();
 }
 function Check_id() 
 {
 browsing_window = window.open("checkid.jsp?id=" + Member_Input.id.value, "_idcheck", /*버튼을누르면checkid.jsp?id이게실행,?는  Member_Input.id.value이거임,"_idcheck"는 창이름 */
"height=200, width=300, menubar=no, directories=no, resizable=no, status=no, scrollbars=yes") ; /*얘네는 속성*/
 browsing_window.focus();
 }
 </SCRIPT> 
 </HEAD>
 <BODY>
 
<section class="login-form">

<h1>JOIN TO BE A MEMBER</h1>
 <FORM Name='Member_Input' Method='post' Action='member_output.jsp'>
<div class="int-area">
<input type="text" name="id" id="id"
autocomplete="off" required>
<label for="id">USER ID</label>
<button type="submit" OnClick='Check_id()' value='ID 중복검사'>확인</button>
</div>
 
<div class="int-area">
<input type="password" name="pass" id="pw"
autocomplete="off" required>
<label for="pw">PASSWORD</label>
</div>

<div class="int-area">
<input type="text" name="name" id="name"
autocomplete="off" required>
<label for="name">NAME</label>
</div>

<div class="btn-area">
<input type='button' OnClick='Check()' value='회원가입'>
</div>

<div class="caption">
<a href="login.jsp">로그인 페이지로 돌아가기</a>
<div class="caption">
<a href="home.html">홈페이지로 돌아가기</a>
</div>
</div>

</FORM>
 </BODY>
</HTML>