<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login User</title>
<style type="text/css"	>
	*{
	    padding: 0;
	    margin: 0;
	    box-sizing: border-box;
	}
	#box{
		height: 250px;
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
	#dee{
		text-align: center;
		border-radius: 20px;
		color: white;
		background-color: blue;
		border:none;
		font-size: 20px;
		margin-left: 20%;
		padding: 10px;
		text-decoration: none;
	}
</style>
</head>
<body>
	<div id="box">
			<h1>LogIn Form</h1>
		<form action="login" method="post">
			<table>
				<tr>
					<td>Email:</td>
					<td><input type="email" name="em"></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="ps"></td>
				</tr>	
			</table>
			<input type="submit" id="submi"  value="Login">
		</form>
			<br>
		<a id="dee" href="register.jsp">New User Register Here</a>
	</div>

</body>
</html>