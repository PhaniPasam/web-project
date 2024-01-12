package waterdemo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/checkuser")
public class checkuser extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public checkuser() {
        super();
    }
    private double currentVal = 0;
    private double upcomingVal = 0;
  private static final String DB_DRIVER = "com.mysql.jdbc.Driver";
  private static final String DB_CONNECTION = "jdbc:mysql://localhost:3306/sensex";
  private static final String DB_USER = "root";
  private static final String DB_PASSWORD = "root123";

  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
	  currentVal = currentVal + 1.5;	
		upcomingVal = upcomingVal + 3.4;
		String str_curr = String.valueOf(currentVal);
		String str_up = String.valueOf(upcomingVal);
		
		Cookie cookie1 = new Cookie("current",str_curr);
		Cookie cookie2 = new Cookie("upcoming",str_up);
		response.addCookie(cookie1);
		response.addCookie(cookie2);
		RequestDispatcher rd = request.getRequestDispatcher("sensex2.jsp");
		rd.forward(request, response);
  }
}
