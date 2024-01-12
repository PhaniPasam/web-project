package waterdemo;

import java.io.IOException;
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

@WebServlet("/registration")
public class regstration extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String Name =request.getParameter("name");
        String Phone =request.getParameter("phone");
		String Gender =request.getParameter("gender");
		String Type   =request.getParameter("college");
		String EMAIL =request.getParameter("email");
		String username   =request.getParameter("dept");
		String Password =request.getParameter("score");
		
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","root123");
			PreparedStatement pst = con.prepareStatement("insert into centac(name,phone,Gender,Type,EMAIL,username,Password) values(?,?,?,?,?,?,?)");
			pst.setString(1, Name);
			pst.setString(2, Phone);
			pst.setString(3, Gender);
			pst.setString(4, Type);
			pst.setString(5, EMAIL);
			pst.setString(6, username);
			pst.setString(7, Password);
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("centac.jsp");
			if (rowCount>0) {
				 request.setAttribute("status", "success");
				 response.sendRedirect("student.jsp");
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
				
				
			}
		 
	}

}