<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "testBean.*" %>
<%@ page import = "java.util.*" %>
<% 
	request.setCharacterEncoding("UTF-8");
	studentDAO select = new studentDAO();
	List<studentVO> rsList = new ArrayList<studentVO>();
	rsList = select.select();%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<%
 for(int i=0;i<rsList.size();i++) {
  studentVO student = (studentVO)rsList.get(i);
%>
<%=student.getNumber()%>
<%=student.getName() %><br>
<%} %>
</body>
</html>