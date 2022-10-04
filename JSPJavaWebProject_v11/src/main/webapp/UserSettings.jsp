<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.jacaranda.User.*" %>
<%@ page import="com.jacaranda.DataAccess.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User settings</title>
<link rel="stylesheet" href="css/UserSettings.css">
</head>
<body>


<%


		
		
		
		UserDataAccess dao = new UserDataAccess();
		String oldUser = request.getParameter("oldUserName");
		String oldPass = request.getParameter("oldPass");
		User ogUser = new User(oldUser, oldPass);
		
		String error = "";
		try {
		
			if(dao.comprobationUser(ogUser) == true) {
				response.sendRedirect("Shop.jsp");
		
		
				String user = request.getParameter("userName");
				String password = request.getParameter("userPass");
				String email = request.getParameter("userMail");
				String name = request.getParameter("userName");
				String address = request.getParameter("userAddress");
				String phoneNumber = request.getParameter("userNumber");
		
		
				dao.modUser(name, user, password, address, phoneNumber, email, oldUser);
			}
		} catch(UserException e) {
			error = e.getMessage();
		}
		
		

	
		

%>


<div id="divPadre">
        <div id="divHijo">
            <form>
                <table id="table_user">
                    <tr>
                        <td>Old User Name: </td>
                        <td><input type="text" name="oldUserName" id="oldUserName" required></td>
                    </tr>
                    <br>
                    <tr>
                        <td>Old Password: </td>
                        <td><input type="text" name="oldPass" id="oldPass" required></td>
                    </tr>
                    <br>
                    <tr>
                        <td>New name: </td>
                        <td><input type="text" name="userName" id="userName" required></td>
                    </tr>
                    <br>
                    <tr>
                        <td>New E-Mail</td>
                        <td><input type="email" name="userMail" id="userMail" required></td>
                    </tr>
                    <br>
                    <tr>
                        <td>New Password</td>
                        <td><input type="text" name="userPass" id="userPass" required></td>
                    </tr>
                    <br>
                    <tr>
                        <td>New Address</td>
                        <td><input type="text" name="userAddress" id="ususerAddressName" required></td>
                    </tr>
                    <br>
                    <tr>
                        <td>New Number</td>
                        <td><input type="text" name="userNumber" id="userNumber" required></td>
                    </tr>
                    <br>
                    <tr align="center">
                        <td>
                            <input type="submit" value="Update account" name="Update account">
                        </td>
                    </tr>
                    
                    
                    
                </table>
            </form>
            <p id="error"><%= error %> </p>
            
            <a href="index.jsp"><button id="button">Return to Login</button></a>
        </div>
    </div>
</body>
</html>