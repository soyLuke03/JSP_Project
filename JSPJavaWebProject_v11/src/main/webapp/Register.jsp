<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.jacaranda.User.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String user = request.getParameter("userName");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String id = request.getParameter("personalId");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phoneNumber = request.getParameter("phoneNumber");
		
		User newAccount = new User(name, user, password, address, phoneNumber, id, email);
		if(newAccount.registerUser() == true) {%>
			<jsp:forward page="Login.jsp"></jsp:forward>
		<%}
	%>
	<form method="post">
		User<input type="text" id="userName" name="userName" required>
		Password<input type="password" id="password" name="password" required>
		Email<input type="email" id="email" name="email" required>
		Id<input type="text" id="personalId" name="personalId" required>
		Name<input type="text" id="name" name="name" required>
		Address<input type="text" id="address" name="address" required>
		Phone number<input type="text" id="phoneNumber" name="phoneNumber" required>
		<button type="submit">Enviar</button>
	</form>
</body>
</html>