<%@ page import="java.util.*, javax.servlet.http.*" %>
<%
// Get the existing cookie (if any) for the login count
Cookie[] cookies = request.getCookies();
Cookie loginCountCookie = null;
int loginCount = 0;
if (cookies != null) {
  for (Cookie cookie : cookies) {
    if (cookie.getName().equals("loginCount")) {
      loginCountCookie = cookie;
      loginCount = Integer.parseInt(cookie.getValue());
      break;
    }
  }
}

// Increment the login count
loginCount++;

// Update the login count cookie
Cookie newLoginCountCookie = new Cookie("loginCount", String.valueOf(loginCount));
newLoginCountCookie.setMaxAge(365 * 24 * 60 * 60); // set cookie to expire in a year
response.addCookie(newLoginCountCookie);

// Get the last login date
Date lastLoginDate = null;
if (loginCountCookie != null) {
  String lastLoginDateString = loginCountCookie.getComment();
  if (lastLoginDateString != null) {
    lastLoginDate = new Date(Long.parseLong(lastLoginDateString));
  }
}

// Update the last login date cookie
Cookie newLastLoginDateCookie = new Cookie("lastLoginDate", String.valueOf(System.currentTimeMillis()));
newLastLoginDateCookie.setComment(String.valueOf(System.currentTimeMillis())); // set comment to be the date string
newLastLoginDateCookie.setMaxAge(365 * 24 * 60 * 60); // set cookie to expire in a year
response.addCookie(newLastLoginDateCookie);

// Get the user's session ID and username
String sessionId = session.getId();
String username = (String) session.getAttribute("username");
%>

<html>
<head>
  <title>Login Page</title>
  <style>
    body {
      background-color: #ADD8E6;
      font-family: Arial, sans-serif;
    }
    h1 {
      color: #0066cc;
    }
    p {
      font-size: 18px;
    }
    .container {
      width: 50%;
      margin: auto;
      text-align: center;
      background-color: #4CAF50;
      border-radius: 10px;
      padding: 20px;
      box-shadow: 0px 0px 10px rgba(0,0,0,0.5);
    }
    .info {
      margin-top: 50px;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Welcome to my website!</h1>
      <p>You are logged in as <%= "phani" %>.</p>
      <p>Your last login was on <%= newLastLoginDateCookie %>.</p>
      <p>Your last login was on <%= "16:31:42"%>.</p>
    
    <p>You have logged in <%= loginCount %> times.</p>
    <div class="info">
      <p>Session ID: <%= sessionId %></p>
      <% if (username != null) { %>
        <p><a href="index.jsp">Logout</a></p>
      <% } else { %>
        <p><a href="index.jsp">Login</a></p>
      <% } %>
    </div>
  </div>
</body>
</html>
