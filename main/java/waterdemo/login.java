package waterdemo;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String uemail = request.getParameter("username");
		String upwd = request.getParameter("password");

		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;

		if(uemail==null || uemail.equals("")) {
		request.setAttribute("status", "invalidEmail");
		dispatcher = request.getRequestDispatcher("login.jsp");
		dispatcher.forward(request, response);
		}

		if(upwd==null || upwd.equals("")) {
		request.setAttribute("status", "invalidPassWord");
		dispatcher = request.getRequestDispatcher("login.jsp");
		dispatcher.forward(request, response);
		}
		try {

		 Class.forName("com.mysql.jdbc.Driver");
		 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/water?useSSL=false", "root", "root123");
		 PreparedStatement pst = con.prepareStatement("select * from customers where username = ? and Password = ?");
		 pst.setString(1, uemail);
		 pst.setString(2, upwd);
		 
		 ResultSet rs = pst.executeQuery();
		 
		 if(rs.next()) {
		 session.setAttribute("name", rs.getString("username"));
		 dispatcher = request.getRequestDispatcher("Home.jsp");
		 }else {
		 
		 request.setAttribute("status", "failed");
		 dispatcher = request.getRequestDispatcher("Failure.html");
		 }
		 
		 dispatcher.forward(request, response);  
		}catch(Exception e) {

		e.printStackTrace();
		}
		}

		}
