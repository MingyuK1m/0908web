<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<%
 Class.forName("com.mysql.jdbc.Driver");
 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/201412357","201412357","123456789");
 
 PreparedStatement pstmt = conn.prepareStatement("select * from student");
 ResultSet rs = pstmt.executeQuery();
 
 while(rs.next()) {
  String number = rs.getString("number");
  String name = rs.getString("name"); %>
  <%= number %>
  <%= name %><br>
   <% }
%>
</body>
</html>