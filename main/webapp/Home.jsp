<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*, javax.servlet.http.*" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>water plant </title>
	<style>
		body {
			background-color: #ADD8E6; 
			font-family: Arial, sans-serif; 
			margin: 0;
			padding: 0;
		}

		header {
			background-color: #fff; /* set header background color to white */
			box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1); /* add box-shadow to header */
			padding: 20px;
			position: fixed;
			top: 0;
			left: 0;
			width: 100%;
			z-index: 999;
		}

		h1 {
			margin: 0;
			font-size: 36px;
			color: #333;
		}

		nav ul {
			list-style: none; 
			margin: 0;
			padding: 0;
			display: flex;
			justify-content: space-between;
			align-items: center;
		}

		nav ul li {
			margin-right: 20px;
		}

		nav ul li:last-child {
			margin-right: 0;
		}

		nav ul li a {
			color: #333;
			text-decoration: none;
			font-size: 18px;
			font-weight: bold;
			transition: all 0.3s ease;
		}

		nav ul li a:hover {
			color: #ADD8E6; /* change color on hover */
		}

		main {
			margin-top: 80px;
			padding: 20px;
			display: flex;
			flex-direction: column;
			align-items: center;
			text-align: center;
		}

		h2 {
			font-size: 28px;
			margin-bottom: 40px;
			color: #333;
		}

		form label {
			display: block;
			font-size: 18px;
			font-weight: bold;
			margin-bottom: 10px;
			color: #333;
		}

		form input[type="text"] {
			padding: 10px;
			font-size: 18px;
			border-radius: 5px;
			border: none;
			background-color: #f2f2f2;
			margin-bottom: 20px;
			width: 100%;
			max-width: 400px;
		}

		form input[type="number"] {
			padding: 10px;
			font-size: 18px;
			border-radius: 5px;
			border: none;
			background-color: #f2f2f2;
			margin-bottom: 20px;
			width: 100%;
			max-width: 400px;
		}

		form input[type="submit"] {
			padding: 10px 20px;
			font-size: 18px;
			border-radius: 5px;
			border: none;
			background-color: #ADD8E6;
			color: #fff;
			cursor: pointer;
			transition: all 0.3s ease;
		}

		form input[type="submit"]:hover {
			background-color: red;
		}

		footer {
			background-color: #fff;
			padding: 20px;
			text-align: center;
			box-shadow: 0px -2px 5px rgba(0, 0, 0, 0.1);
			position: fixed;
			bottom: 0;
			left: 0;
			width: 100%;
		}

		footer p {
			margin: 0;
			font-size: 16px;
			color: #333;
		}
		

	</style>
</head>
    <body>
	<header>
    <nav  id="menu" class="menu">
        <ul>
            <li><a href="Home.jsp">Home</a></li>
            <li><a href="about.html">About</a></li>
            <li><a href="session.jsp">UR SESSION</a></li>
            <li><a href="index.jsp"> LOGOUT </a></li>
        </ul>
    </nav>
	</header>

	<main>
	<%
     String user = "phani";
 if(session.getAttribute("user") == null){
  }else user = (String) session.getAttribute("user");
  String userName = user;
  String sessionID = null;
Cookie[] cookies = request.getCookies();
if(cookies !=null){
for(Cookie cookie : cookies){
	if(cookie.getName().equals("user")) userName = cookie.getValue();
	if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
   
}
}


	
	

%>
<h3> Hi <%=userName %> your  LOGIN SUCCESSFUL</h3>
<h3  style= "color:red"> Your Session ID=<%=sessionID %></h3>
<br>
		<h1>Make your Booking NOW </h1>
		<br>
		<form  method="post" action="Book" >
			<label for="name">Enter Name:</label>
			<input type="text" id="name" name="name" required >
			<label for="address">Enter Address:</label>
			<input type="text" id="address" name="address" required >
			<label for="phone">Enter Phone Number:</label>
			<input type="text" id="phone" name="phone" required >
			<label for="quantity">Enter NO OF CAN  BOOKING:</label>
			<input type="NUmber" id="cans" name="quantity" min="1" required >
			<label for="bottels">Enter NO OF Water Bottles BOOKING:</label>
			<input type="Number" id="bottles" name="bottles" min="1" required  >
			<input type="submit" value="Book Now" >
			<a href="index.html">price detailes</a>
		</form>
		
	</main>
	
</body>
    