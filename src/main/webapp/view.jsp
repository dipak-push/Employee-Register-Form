<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table, td, th {
  border: 1px solid;
}

table {
  width: 50%;
  border-collapse: collapse;
}
</style>
</head>
<body>
	<%
ResultSet rs=(ResultSet)request.getAttribute("result");
Connection con=(Connection)request.getAttribute("con");
PreparedStatement pst=(PreparedStatement)request.getAttribute("pst");
%>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Email</th>
			<th>Phone</th>
		</tr>

		<%
while(rs.next()){
%>
		<tr>
			<td><%=rs.getInt("id")%></td>
			<td><%=rs.getString("name") %></td>
			<td><%=rs.getString("email") %></td>
			<td><%=rs.getLong("phone") %></td>
		</tr>
		<%
}
try{
	if(con != null)
		con.close();
	if(pst != null)
		pst.close();
	if(rs != null)
		rs.close();
}
catch(SQLException e){
	e.printStackTrace();
}
%>

	</table>


</body>
</html>