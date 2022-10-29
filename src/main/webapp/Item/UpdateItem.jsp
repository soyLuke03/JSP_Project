<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@ page import="com.jacaranda.Item.Item" %>
<%@ page import="java.util.List"%>
<jsp:useBean id="daoItem" class="com.jacaranda.Dao.DaoItem"></jsp:useBean>
<%
	String isSession = (String) session.getAttribute("login");
	String userSession = (String) session.getAttribute("usuario");
	
	//Recuperamos el id del item y el id de la categoria
	String idItem = request.getParameter("value");
	String categoryId = request.getParameter("categoryId");
	
	/*Controlamos que no se pueda entrar a la pagina sin iniciar sesión
	o en caso de que se borre el id de error*/
	if(isSession == null && userSession == null){
		response.sendRedirect("../error.jsp?error_msg=You do not have perms, please log in");
	} else if(idItem == null || categoryId == null) {
		response.sendRedirect("../error.jsp?error_msg=Id cannot be null.");
	} else {
		Item item = daoItem.getItem(idItem);%>

		<!DOCTYPE html>
		<html>
		<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="../css/generalStyle.css">
		<title>Update item</title>
		</head>
		<body>
		<body>

			<div id="header">
		    	<a href="../store.jsp"> <img src="../images/logo.png" width="110px" height="100px" id="logo"></a>
		        	<span id="welcome">
		        		<button><h4>Sesion: <%=userSession%></h4></button>
		        	</span>
		        	
		        	
				 	<span id="welcome">
				 		<a href="../index.jsp"><button><h4>Log Out</h4></button></a>
				 	</span>
		        <hr color="black" size="5">
		    </div>
		    <div id="contenido">
				<form action="UpdateMeNow.jsp" method="GET" id="updateItemForm">
					<input type="hidden" value="<%= item.getId()%>" name="id">
					<input type="hidden" value="<%= categoryId%>" name="categoryId">
					<h1>Update an item: </h1>
					<p>
						ID:
					<br> 
					 	<%=item.getId() %>
					 	<%=categoryId %>
					 </p>
				
					<br>
						<legend id="legends"><b>Introduce the new info: </b></legend>
						Amount: 
						<input type="number" name="AmountItem" min="0" max="300000" value="<%=item.getAmount()%>" required><br>
						<br>
						Name: 
						<input type="text" name="NameItem" value="<%=item.getName()%>" required><br>
						<br>
						Available: 
						<br>
						Yes 
						<input type="radio" name="AvailableItem" value="true" 
						<%if(item.getAvailability()==true){%>
							checked
						<%}%> required>
						No
						<input type="radio" name="AvailableItem" value="false"
						<%if(item.getAvailability()==false){%>
							checked
						<%}%> required>
						<br>
						<br>
						Price: 
						<input type="number" name="PriceItem" value="<%=item.getPrice()%>" min="0" max="300000" step="0.01" required><br>
						<br>
						Entry data: 
						<input type="date" name="EntryDataItem" value="<%=item.getEntry_date()%>" required><br>
						<br>
						
						<button type="submit">Update me now</button>
				</form>
						<!-- Si se quiere volver se le pasa el id de la categoria
						para poder recuperarla -->
						<a href="../store.jsp?value=<%=categoryId%>"><button name="Volver">Return to shop</button></a>
				
		    </div>     

		</body>
		</html>
	<%}%>