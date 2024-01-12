<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Water Purification Customer Details Form</title>
    <style>
      * {
        box-sizing: border-box;
        font-family: Arial, sans-serif;
      }
      
      body {
        margin: 0;
        padding: 0;
        background-color : #87CEFA;
      }
      
      h1 {
        text-align: center;
        margin-top: 50px;
      }
      
      form {
        max-width: 600px;
        margin: 0 auto;
        padding: 20px;
        background-color:	#00FF00;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
      }
      
      label {
        display: block;
        margin-bottom: 8px;
       
      }
      
      input[type="text"], input[type="tel"], input[type="email"], input[type="password"], select {
        width: 100%;
        padding: 12px;
        border-radius: 4px;
        border: none;
        background-color: #D3D3D3;
        margin-bottom: 20px;
      }
      
      input[type="submit"] {
        background-color: #4CAF50;
        color: #ffffff;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
      }
      
      input[type="submit"]:hover {
        background-color : #FF0000;
      }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  </head>
  <body>
  	<script type="text/javascript">
  	
  	$(document).ready(function() {
  	  $('#username').blur(function() {
  	    var username = $(this).val();
  	    $.ajax({
  	      url: 'checkuser',
  	      type: 'POST',
  	      data: {username: username},
  	      success: function(response) {
  	        if(response == "available") {
  	          $('#username_availability').html('<span style="color:green;">Username is available!</span>');
  	        } else {
  	          $('#username_availability').html('<span style="color:red;">Username is not available!</span>');
  	        }
  	      }
  	    });
  	  });
  	});

  	
  	</script>
    <h1>Water Purification Customer Details Form</h1>
    <form  method="post" action="registration">
      <label for="name">Name:</label>
      <input type="text" id="name" name="name">
      <label for="phone">Phone:</label>
      <input type="tel" id="phone" name="phone">

      <label for="gender">Gender:</label>
      <select id="gender" name="gender">
        <option value="male">Male</option>
        <option value="female">Female</option>
        <option value="other">Other</option>
      </select>
      <label for="type">Type:</label>
      <select id="type" name="type">
        <option value="daily use">Daily Use</option>
        <option value="hotel use">Hotel Use</option>
        <option value="other">Other</option>
      </select>

      <label for="email">Email:</label>
      <input type="email" id="email" name="email">

      <label for="username">Username:</label><div id="username_availability"></div>
      <input type="text" id="username" name="username">

      <label for="password">Password:</label>
      <input type="password" id="password" name="password">

      <input type="submit" value="Submit">
     
    </form>
  </body>
</html>
