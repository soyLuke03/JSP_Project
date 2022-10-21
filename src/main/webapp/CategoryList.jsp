<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.DAOitem" %>
<%@page import="java.util.Iterator"%>
<%@ page import="com.jacaranda.Item" %>
<%@ page import="java.util.List"%>
<%


	String isSession = (String) session.getAttribute("login");
	String userSession = (String) session.getAttribute("usuario");
	
	if(isSession == null && userSession == null){
		response.sendRedirect("error.jsp?msg=You´re not logged in.");
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>The Mega Store</title>
	<link rel="stylesheet" type="text/css" href="css/styleTablePage.css">
</head>
<body>
	<!-- HEADER de las páginas -->
	<div id="header">
    	<a href="store.jsp"><img src="images/logo.png" width="110px" height="100px" id="logo"></a>
        	<!-- Boton FalsoBoton de Session -->
        	<span id="welcome">
        		<button><h4>Sesion: <%=(userSession)%></h4></button>
        	</span>
        	<!-- Boton LogOut -->
		 	<span id="welcome">
		 		<a href="index.jsp"><button><h4>Log Out</h4></button></a>
		 	</span>
		 	<!-- Boton Categories -->
		 	<span id="welcome">
		 		<a href="store.jsp"><button><h4>Categories</h4></button></a>
		 	</span>
		 	<!-- Boton Willing to sell -->
		 	<span id="welcome">
		 		<a href="addCategory.jsp"><button name="addItem" id="addButton" value="addItem">Add new categories</button></a> 
		 	</span>
        <hr color="black" size="5">
    </div>
	<br>
	
<%


	DAOitem daoItem = new DAOitem();
	List<Item> itemList = null;
	try {
		itemList = daoItem.getItems();
	
	} catch (Exception e) {
		String message = e.getMessage();
		response.sendRedirect("error.jsp?msg=" + message);
	}
%>

	<div id="content-table">
		<table>
		
			<tr>
				<th>CategoryName</th>
				<th>IdCategory</th>
				<th>Description</th>
				<th>Delete</th>
				<th>Update</th>
			</tr>
		
	
			
		
		</table>
	</div>
</body>
</html>