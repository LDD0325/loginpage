<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import = "java.sql.*" %> <!-- 필수 sql쓸려면 필수! -->
<HTML>
 <HEAD>
 <TITLE> 아이디 중복 체크 </TITLE> 
 <link rel="stylesheet" href="style3.css">
 </HEAD>
 <BODY>
 <section class="checkid-form">
 <%
 String id = request.getParameter("id"); //아이디 받아오는 부분
 if (id == "") { //아이디가 없으면 
 %>

 <h1>ID를 입력하세요.</h1>
 <div class="btn-area">
<a href="javascript:close()"><button type="submit">닫기</button></a>
</div>
 
<%
 } else {          //아이디가 있으면 
 Class.forName("com.mysql.jdbc.Driver"); //jdbc를 로드한다
 String url = "jdbc:mysql://localhost:3306/shopjsp";
 Connection conn = DriverManager.getConnection(url, "shopid", "shoppass"); //db랑연동하는 부분
 Statement stmt = conn.createStatement(); //sql문을 만들어낼 장소?
 String strSQL = "SELECT id FROM tblmember where id='" + id + "'";
 ResultSet rs = stmt.executeQuery(strSQL);
 if (!rs.next()) { //받은 id가 db(테이블)에 없으면
 %>
 
 <h1>ID : <%=id%> <BR> 사용할 수 있는 아이디입니다.</h1>
 <div class="btn-area">
<a href="javascript:close()"><button type="submit">닫기</button></a>
</div>

 <%
 } else { //그렇지않으면
 %>

 <h1> ID : <%=id%> <BR> 사용할 수 없는 아이디입니다.</h1>
 <div class="btn-area">
<a href="javascript:close()"><button type="submit">닫기</button></a>
</div>


 <%
 }
 rs.close(); 
 stmt.close();
 conn.close(); 
 }
 %>

 </BODY>
 </HTML>