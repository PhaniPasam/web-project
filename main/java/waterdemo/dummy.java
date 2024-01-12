package waterdemo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;

public class dummy {
	/*String Name =request.getParameter("name");
    String Phone =request.getParameter("phone");
	String Address =request.getParameter("address");
	String cans  =request.getParameter("quantity");
	String bottles =request.getParameter("bottles");
	
	RequestDispatcher dispatcher = null;
	Connection con = null;
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/water","root","root123");
		PreparedStatement pst = con.prepareStatement("insert into booking(name,address, phone, no_cans, no_bottles) values(?,?,?,?,?)");
		pst.setString(1, Name);
		pst.setString(2, Address);
		pst.setString(3, Phone);
		pst.setString(4, cans);
		pst.setString(5, bottles);
		
		int rowCount = pst.executeUpdate();
		dispatcher = request.getRequestDispatcher("success.html");
		if (rowCount>0) {
			 request.setAttribute("status", "success");
			 response.sendRedirect("success.html");
		}else {
			request.setAttribute("status", "failed");
			response.sendRedirect("Failure.html");
		}
		
		dispatcher.forward(request, response);
		
		
		
	} catch (Exception e) {
		e.printStackTrace();
		
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			
		}*/
	 
}
