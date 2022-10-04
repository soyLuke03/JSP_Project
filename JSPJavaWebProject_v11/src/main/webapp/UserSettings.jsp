<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.jacaranda.User.*" %>
<%@ page import="com.jacaranda.DataAccess.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User settings</title>
</head>
<body>


<%

		UserDataAccess UDA = new UserDataAccess();



		
		String user = request.getParameter("userName");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String id = request.getParameter("personalId");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phoneNumber = request.getParameter("phoneNumber");
		
		if (user != null && password != null && email != null && id != null && name != null && address != null
		&& phoneNumber != null) {
			UserDataAccess dao = new UserDataAccess();
			User newAccount = new User(name, user, password, address, phoneNumber, id, email);
			
			try {
		if(dao.registerUser(newAccount) == 1) {
		
			response.sendRedirect("index.jsp");
			}
		} catch(UserException e) {
			out.println(e.getMessage());
		}
		}

	
		

%>


	<form align="center">
		<table border="2" id="table_user">
			<tr>
				<td>New name: </td>
				<td><input type="text" name="userName" id="userName" required></td>
			</tr>
			<tr>
				<td>New E-Mail</td>
				<td><input type="email" name="userMail" id="userMail" required></td>
			</tr>
			
			<tr>
				<td>New Password</td>
				<td><input type="text" name="userPass" id="userPass" required></td>
			</tr>
			
			<tr>
				<td>New Address</td>
				<td><input type="text" name="userAddress" id="ususerAddresserName" required></td>
			</tr>
			
			<tr>
				<td>New Number</td>
				<td><input type="text" name="userNumber" id="userNumber" required></td>
			</tr>
			
			<tr>
				<td align="center"><input type="submit"Accept changes></td>
			</tr>
			
			
		</table>
	</form>

	<a href="index.jsp"><button>Return to Login</button></a>
</body>
</html>