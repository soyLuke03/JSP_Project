<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.User.*" %>
<%@ page import="com.jacaranda.DataAccess.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	session.invalidate();
			String userName = request.getParameter("userName");
			String password = request.getParameter("password");
			HttpSession sessionUser = request.getSession();
			
			if(userName != null && password != null) {
		sessionUser.setAttribute("login", "True");
		sessionUser.setAttribute("name", userName);
		UserDataAccess dao = new UserDataAccess();
		User user = new User(userName, password);
		try {
			if(dao.comprobationUser(user) == true) {
	%>
					<jsp:forward page="Shop.jsp"></jsp:forward>
				<%}
			} catch(UserException e) {
				out.println(e.getMessage());
			}
		}
	%>
	<form method="post">
		User<input type="text" id="userName" name="userName">
		Contraseña<input type="password" id="password" name="password">
		<button type="submit">Enviar</button>
	</form>
	<a href="Register.jsp">Regístrase</a>
</body>
</html>