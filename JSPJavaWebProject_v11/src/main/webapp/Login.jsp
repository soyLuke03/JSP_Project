<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.User.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		
		if(userName != null && password != null) {
			User user = new User(userName, password);
			if(user.comprobationUser() == true) {%>
				<jsp:forward page="index.jsp"/>
			<%} else {
				out.println("Error");
			}
		}
	%>
	<form method="post" action="Login.jsp">
		User<input type="text" id="userName" name="userName">
		Contraseña<input type="password" id="password" name="password">
		<button type="submit">Enviar</button>
	</form>
	<a href="Register.jsp">Registrarse</a>
</body>
</html>