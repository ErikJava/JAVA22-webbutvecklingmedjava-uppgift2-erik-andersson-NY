<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inlämningsuppgift 2</title>
</head>
<body>

	<h4>${error}</h4>

	<%
	if (session.getAttribute("username") != null) { 
		response.sendRedirect("views/LogInPage.jsp");
	}
	%>

	<form action="<%=request.getContextPath()%>/FirstServlet" method="post">
		<h4>Name</h4>
		<input type="text" name="uname" />
		<h4>Password</h4>
		<input type="password" name="pass" /> 
		<br> 
		<br> 
		<input type="submit" value="Login" />
	</form>

</body>
</html>