<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %> <!-- 한글쓸때 꼭필요해요 -->
<HTML>
 <HEAD>
 <TITLE> 회원 등록 성공 </TITLE> 
 <style type='text/css'>
 <!--
a:link {font-family:"";color:black;text-decoration:none;}
a:visited {font-family:"";color:black;text-decoration:none;}
a:hover {font-family:"";color:black;text-decoration:underline;}
 -->
 </style>
 </HEAD>
 <BODY>
 <%
 String id = request.getParameter("id");
 String pass = request.getParameter("pass"); 
 String name = request.getParameter("name");
 String check_ok = "yes";
 if (id == "") check_ok = "no";
 if (pass == "") check_ok = "no";
 if (name == "") check_ok = "no";
 Class.forName("com.mysql.jdbc.Driver");
 String url = "jdbc:mysql://localhost:3306/shopjsp";
 Connection conn = DriverManager.getConnection(url,"shopid","shoppass");
 Statement stmt = conn.createStatement();
 String strSQL = "SELECT id FROM tblmember where id='" + id + "'";
 ResultSet rs = stmt.executeQuery(strSQL);
 if (!rs.next())  //없으면
	 check_ok="yes";
 else  //있으면
	 check_ok="no";
 if (check_ok == "yes") {
 strSQL = "INSERT INTO tblmember(id, pass, name)";
 strSQL = strSQL + "VALUES('" + id + "', '" + pass + "', '" + name + "')";
 stmt.executeUpdate(strSQL);
 %>
 
 <center><font size='3'><b> 회원 가입 성공 </b></font> 
 <TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
 <TR> 
 <TD> <hr size='1' noshade> </TD> 
 </TR>
 </TABLE>
 
 <TABLE cellSpacing='0' cellPadding='10' align='center' border='0'>
 
 <TR>
<TD align='center'>
 <font size='2'>회원 가입을 축하합니다.<BR>로그인 하세요.</font>
</TD>
 </TR>
 
 <TR>
<TD align='center'>
 <font size='2'><a href="login.jsp">[로그인]</a></font>
</TD>
 </TR>
 
 </TABLE>
 
 <%
 } else {
 %>
 <center><font size='3'><b> 회원 가입 실패 </b></font>
 <TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
 <TR> 
 <TD><hr size='1' noshade> </TD> 
 </TR>
 </TABLE>
 <TABLE cellSpacing='0' cellPadding='10' align='center' border='0'>
 <TR>
 <TD align='center'>
 <font size='2'>회원 가입에 실패 했습니다. <BR>다시 가입서를 작성해 주세요.</font>
</TD>
 </TR>
 <TR>
 <TD align='center'>
 <font size='2'><a href="member_input.jsp">[가입서 작성]</a></font>
 </TD>
 </TR>
 </TABLE>
 <%
 }
 stmt.close();
 conn.close();
 %>
 </BODY>
</HTML>