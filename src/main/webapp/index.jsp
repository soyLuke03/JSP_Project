
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<title>Login</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

	<%session.invalidate(); %>
	<body>
		<div id="container">             
	         	<div id="Login">
	     
	         		<form action="log.jsp"  method="post">
		            	<h1 id="titulo">The Mega Storage</h1>
						
		            	<input type="text" placeholder="UserName" name="user" id="user" required>
		            	
		                <input type="password" placeholder="Password" name="password" id="password" required>
						<%
						String errorMsg = request.getParameter("msg_error");
					
						if(errorMsg!=null){
						%>
						<div>
							<span id="errorMessage">User or Password was incorrect</span>
						</div>
						<%}%>
		                <hr>
	                    <input type="submit" id="Enviar" value="Enviar">
	          		</form>
	       		</div>
	   	</div>

	</body>
</html>