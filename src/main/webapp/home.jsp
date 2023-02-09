<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home || User</title>
<style type="text/css">
#a {
	height: 100vh;
	width: 100;
	display: flex;
	justify-content: center;
	align-items: center;
}
	#box{
		height: 300px;
		width: 400px;
		margin-left: auto;
		margin-right: auto;
		margin-top: 200px;
		display:flex;
		justify-content:center;		
		align-items:center;
		border-radius: 20px;
	}
.de {
	border-radius: 20px;
	background-color: blue;
	color: white;
	text-decoration: none;
	margin-right: 20px;
	font-size: 20px;
	padding: 10px;
}

.de:hover {
	background-color: aqua;
	color: red;
}
</style>
</head>
<body>
	<%
	String status = (String) request.getAttribute("status");
	%>

	<%
	if (status != null) {
		session.setAttribute("status", "login");
	%>
	<div id="box">
		<a class="de" href="update.jsp">Update</a>
		<a class="de" href="viewAll">ViewAll</a> 
		<a class="de" href="delete.jsp">Delete</a>
	</div>

	<%
	} else {
	response.sendRedirect("login.jsp");
	}
	%>

</body>
</html>