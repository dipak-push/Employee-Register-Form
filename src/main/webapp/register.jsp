<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<style type="text/css">
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

#box {
	height: 300px;
	width: 400px;
	background-color: gray;
	margin-left: auto;
	margin-right: auto;
	margin-top: 200px;
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

h1 {
	font-size: 40px;
	color: reg;
	text-align: center;
}

form {
	font-size: 30px;
	padding-left: 20px;
}

input {
	margin-left: 10px;
	padding-top: 10px;
}

#submit {
	text-align: center;
	border-radius: 20px;
	color: white;
	background-color: blue;
	border: none;
	font-size: 20px;
	margin-left: 30%;
	padding: 10px;
}
</style>
</head>
<body>
	<%-- <%
	String register = (String) request.getAttribute("register");
	%>

	<%
	if (register != null) {
	%> --%>
	<div id="box">
		<h1>Register Form</h1>
		<form action="register" method="post">
			<table>
				<tr>
					<td>ID:</td>
					<td><input type="number" name="id"></td>
				</tr>
				<tr>
					<td>Name:</td>
					<td><input type="text" name="nm"></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input type="email" name="em"></td>
				</tr>
				<tr>
					<td>Phone:</td>
					<td><input type="tel" name="ph"></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="ps"></td>
				</tr>
			</table>
			<input id="submit" type="submit" value="Register">
		</form>
	</div>
	
</body>
</html>