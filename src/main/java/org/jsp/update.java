package org.jsp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/update")
public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;   
    public update() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		String name=request.getParameter("nm");
		String email=request.getParameter("em");
		long phone=Long.parseLong(request.getParameter("ph"));
		String password=request.getParameter("ps");
		
		PrintWriter writer=response.getWriter();
		Connection con=null;
		PreparedStatement pst=null;
		
try {
Class.forName("com.mysql.cj.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/user","Dipak","Dipak@123");
pst=con.prepareStatement("update user set Name=?,Email=?,Phone=?,password=? where id=?");
pst.setString(1, name);
pst.setString(2, email);
pst.setLong(3, phone);
pst.setString(4, password);
pst.setInt(5, id);
pst.executeUpdate();
writer.write("<html><body><h2>User Update Succesful</h2></body></html>");
}
		catch(ClassNotFoundException | SQLException e){
			e.printStackTrace();
		}
		finally {
			try {
				if(con != null) {
					con.close();
				}
				if(pst != null) {
					pst.close();
				}
			}
			catch(SQLException e) {
				e.printStackTrace();
			}
		}
		RequestDispatcher dispatcher=request.getRequestDispatcher("home.jsp");
		request.setAttribute("status", "sucessful");
		dispatcher.forward(request, response);
	}

}
