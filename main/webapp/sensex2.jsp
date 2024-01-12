<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>working</h1>
	<% Cookie cookie = null;
    Cookie[] cookies = null;
    
 // Get an array of Cookies associated with the this domain
 cookies = request.getCookies();
 
 if( cookies != null )
 {            
    for (int i = 0; i < cookies.length; i++)
    {
       cookie = cookies[i];
       
            out.print("<h3> Hello " +cookie.getName()+" "+ cookie.getValue() + " <br/>");
    }
            
 }  %>
</body>
</html>