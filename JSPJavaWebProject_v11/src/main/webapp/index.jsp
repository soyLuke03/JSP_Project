<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.User.*" %>
<%@ page import="com.jacaranda.DataAccess.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP_Project</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body>
	<%
		session.invalidate();
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		HttpSession sessionUser = request.getSession();
		String error = "";
			
		if(userName != null && password != null) {
			sessionUser.setAttribute("login", "True");
			sessionUser.setAttribute("name", userName);
			UserDataAccess dao = new UserDataAccess();
			User user = new User(userName, password);
			try {
				if(dao.comprobationUser(user) == true) {
					response.sendRedirect("Shop.jsp");
				}
			} catch(UserException e) {
				error = e.getMessage();
			}
		}
	%>
	<article>
		<div id="container">
			<div id="title">
				<h1>JSP_Project</h1>
			</div>
			<div id="container_login">
				<form method="post">
					<div class="dates">
						<label for="userName">Username</label>
						<input type="text" id="userName" name="userName" maxlength="30" required>
					</div>
					<div class="dates">
						<label for="password">Password</label>
						<input type="password" id="password" name="password" maxlength="30" required>
					</div>
					<div id="error_message">
						<p class="error"><%=error %></p>
					</div>
					<div id="boton">
						<button type="submit">Sign in</button>
					</div>
				</form>
			</div>
			<div id="enlace">
				<a href="Register.jsp">Sign up</a>
			</div>
		</div>
	</article>
</body>
</html>