package org.jsp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public login() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("em");
		String password=request.getParameter("ps");
		RequestDispatcher dispatcher=null;
		
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "Dipak", "Dipak@123");
			pst = con.prepareStatement("select * from user where Email=? and password=?");
			pst.setString(1, email);
			pst.setString(2, password);
			rs = pst.executeQuery();
			while (rs.next()) {

				if(email.equals(email) && password.equals(password)) {
					request.setAttribute("status", "sucessful");
					dispatcher=request.getRequestDispatcher("home.jsp");
					dispatcher.forward(request, response);
		}
			else {
				PrintWriter writer=response.getWriter();
				writer.write("<html><body><h1>Invalid Id or Password</h1></body></html>");
				dispatcher= request.getRequestDispatcher("login.jsp");
				dispatcher.include(request, response);
			}
			}
	}catch (ClassNotFoundException | SQLException e) {
		e.printStackTrace();
	} finally {
		try {
			if (con != null) {
				con.close();
			}
			if (pst != null) {
				pst.close();
			}
			if (rs != null) {
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	}
}
