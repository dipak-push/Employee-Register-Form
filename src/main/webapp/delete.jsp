<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css"	>
	*{
	    padding: 0;
	    margin: 0;
	    box-sizing: border-box;
	}
	#box{
		height: 150px;
		width: 400px;
		background-color: gray;
		margin-left: auto;
		margin-right: auto;
		margin-top: 200px;
		border-radius: 20px;
	}
	h1{
		font-size: 40px;
		color: reg;
		text-align: center;
	}
	form{
		font-size: 30px;
		padding-left: 20px;
	}
	input{

		margin-left: 10px;
		padding-top: 10px;
	}
	#submi{
		text-align: center;
		border-radius: 20px;
		color: white;
		background-color: blue;
		border:none;
		font-size: 20px;
		margin-left: 30%;
		padding: 10px;
	}
</style>
</head>
<body>
<%
String status = (String) session.getAttribute("status");
%>

<%
if (status != null) {
%>
<div id="box">
			<h1>Delete Form</h1>
		<form action="delete" method="post">
			<table>
				<tr>
					<td>ID:</td>
					<td><input type="number" name="id"></td>
				</tr>	
			</table>
			<input id="submi" type="submit" value="Delete">
		</form>
	</div>
	<% }else {
	response.sendRedirect("login.jsp");
	}
	%>
</body>
</html>