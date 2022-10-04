<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.jacaranda.User.*"%>
<%@ page import="com.jacaranda.DataAccess.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link rel="stylesheet" href="css/cssRegister.css">
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

		if (user != null && password != null && email != null && id != null && name != null && address != null
		&& phoneNumber != null) {
			UserDataAccess dao = new UserDataAccess();
			User newAccount = new User(name, user, password, address, phoneNumber, id, email);
<<<<<<< HEAD
			try {
		if(dao.registerUser(newAccount) == 1) {
	
			response.sendRedirect("index.jsp");
		}
=======
		try {
			if(dao.registerUser(newAccount) == 1) {
				response.sendRedirect("index.jsp");
			}
>>>>>>> Florian
		} catch(UserException e) {
			out.println(e.getMessage());
		}
	}
	%>
		<form method="post">
		
        <div class="register-body">

            <div id="borde">
                <div class="container">
                    <label>User</label>
                    <input type="text" id="userName" name="userName" required>
                    
                    <br>
                    <br>

                    <label>Password</label>
                    <input type="password" id="password" name="password" required>
                    
                    <br>
                    <br>
                    
                    <label>E-mail</label>
                    <input type="email" id="email" name="email" required> 
                    
                    <br>
                    <br>

                    <label>ID</label>
                    <input type="text" id="personalId" name="personalId" required>
                    
                    <br>
                    <br>

                    <label>Name</label>
                    <input type="text" id="name" name="name" required> 
                    
                    <br>
                    <br>
                    
                    <label>Address</label>
                    <input type="text" id="address" name="address" required> 
                        
                    <br>
                    <br>

                    <label>Phone number</label>
                    <input type="text" id="phoneNumber" name="phoneNumber">
                    
                    <br>
                    <br>
                    
                    <button type="submit">Send</button>

                </div>
            </div>
        </div>
	</form>
</body>
</html>