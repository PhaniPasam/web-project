<%@ page contentType="Text/html; charset=UTF-8" pageEncoding="UTF-8"  %>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
	<title>WATER PLANT LOGIN </title>
	<style>
		body {
			background-color: #f2f2f2;
			font-family: Arial, sans-serif;
			background-repeat:no-repeat;
			background-size:cover;
		}
		
		h1 {
			font-size: 36px;
			margin-top: 50px;
			text-align: center;
			text-transform: uppercase;
			color : red;
		}
		
		form {
			background-color: #4CAF50;
			border-radius: 5px;
			box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
			margin: 50px auto;
			max-width: 400px;
			padding: 30px;
		}
		
		input[type="text"], input[type="password"] {
			border-radius: 3px;
			border: 1px solid #ccc;
			box-sizing: border-box;
			display: block;
			font-size: 16px;
			margin-bottom: 20px;
			padding: 10px;
			width: 100%;
		}
		
		input[type="submit"] {
			background-color: #4CAF50;
			border: none;
			border-radius: 3px;
			color: #fff;
			font-size: 16px;
			padding: 10px;
			width: 100%;
		}
		input[type="submit"]:hover {
        background-color : #FF0000;
      }
		
		
		
		a {
			color: #333;
			margin-top: 20px;
			text-align: center;
			text-decoration: none;
			background-color: red;
		}
		
		

	</style>
</head>
<body background="bottle-2032980__340.jpg" >
	<h1>Welcome to Itachi water plant </h1>
	<form method="post" action="login" >
		<label for="username">Username:</label>
		<input type="text" id="username" name="username">
		
		<label for="password">Password:</label>
		<input type="password" id="password" name="password">
		
		<input type="submit" value="Login">
		<a href="http://localhost:80/waterplant/admin.php" class="button "  >As Admin</a>
		<a href="new.jsp" class="button "> New </a>
		<div class="w3-xxLarge"><%
				Date date=new Date();
			out.print("<h2 align = \"center\">" +date.toString()+"</h2>");
		%>
		</div>
		</form>
		<%
		String name= request.getParameter("username");
		out.print("Welcome"+name);
		%>
		
		
		
		
		
	
</body>
</html>
