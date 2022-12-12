<jsp:useBean id="Welcome" class="model.BeanWelcome">
<jsp:setProperty name="Welcome" property="name" value="You have successfully logged in!"/>
<jsp:getProperty name="Welcome" property="name"/>
</jsp:useBean>

<html>
<head>
<title>Title</title>
</head>
<body>   


<%

response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

   if (session.getAttribute("username") == null)
   {
	   response.sendRedirect("Main.jsp");
   }
%>	
	<h1>Welcome ${username}</h1>

	<form action="<%=request.getContextPath()%>/SecondServlet" method="post">
	    <p>Press this button to log out:</p>
		<input type="submit" value="Logout" />
	</form>

</body>
</html>


