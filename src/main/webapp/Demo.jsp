<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	int id=Integer.parseInt(request.getParameter("id"));
	String name=request.getParameter("nm");
	String email=request.getParameter("em");
	long phone=Long.parseLong(request.getParameter("ph"));
%>
<h1>ID: <%=id %></h1>
<h1>Name: <%=name %></h1>
<h1>Email: <%=email %></h1>
<h1>Phone Number: <%=phone %></h1>

</body>
</html>