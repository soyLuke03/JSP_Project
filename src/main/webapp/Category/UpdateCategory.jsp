<%@page import="com.jacaranda.Category.Category"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="daoCategory" class="com.jacaranda.Dao.DaoCategory"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Item</title>
        <link rel="stylesheet" type="text/css" href="../css/generalStyle.css">
		
</head>
	<body>
	
<%
	String isSession = (String) session.getAttribute("login");
	String userSession = (String) session.getAttribute("usuario");
	String CId = request.getParameter("value");

	if(isSession == null && userSession == null) {
		response.sendRedirect("../error.jsp?error_msg=You must login to access.");
	} else if(CId == null) {
		response.sendRedirect("../error.jsp?error_msg=Id cannot be null.");
	} else {
		//Comprobamos usuario
    	Category newCategory = daoCategory.getCategory(CId);%>

		<!-- HEADER de las páginas -->
		<div id="header">
	    	<a href="store.jsp"><img src="../images/logo.png" width="110px" height="100px" id="logo"></a>
	        	<!-- Boton FalsoBoton de Session -->
	        	<span id="welcome">
	        		<button><h4>Session: <%=(userSession)%></h4></button>
	        	</span>
	        	<!-- Boton LogOut -->
			 	<span id="welcome">
			 		<a href="../index.jsp"><button><h4>Log Out</h4></button></a>
			 	</span>
	        <hr color="black" size="5">
	    </div>
		<br>
	    
	    
	    <div id="contenido">
		<form action="UpdateCategoryNow.jsp" method="GET" id="updateItemForm">
			<input type="hidden" value="<%= newCategory.getId()%>" name="id">
			<input type="hidden" value="<%= newCategory.getName()%>" name="categoryName">
			<h1>Update an item: </h1>
			<p>
				ID CATEGORY:
			<br> 
			 	<%=newCategory.getId()%>
			 </p>
		
			<br>
				<legend id="legends"><b>Introduce the new info: </b></legend>
				
				<input type="hidden" name="CId" id="CId" value="<%=newCategory.getId()%>">
				
				<label>Category Name:</label>
				<input type="text" name="CName" id="CName" value="<%= newCategory.getName()%>">
				
				<br>
				<br>
				
				<label>Category Description</label>
				<input type="text" name="CDescription" id="CDescription" value="<%= newCategory.getDescription()%>">
				
				<br>
				<br>
				
				<button type="submit">Update me now</button>
		</form>
				<a href="CategoryList.jsp"><button name="Volver">Return to shop</button></a>
		
	</div>           
		
	
	</body>
	</html>
<%}%>