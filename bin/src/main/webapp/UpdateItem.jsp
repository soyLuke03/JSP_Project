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
		response.sendRedirect("error.jsp?msg=You do not have perms, please log in");
	}
	
	String idItem = request.getParameter("value");
	
	DAOitem daoCar = new DAOitem();
	Item item = daoCar.getItem(idItem);
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/generalStyle.css">
<title>Update item</title>
</head>
<body>
<body>

	<div id="header">
    	<a href="store.jsp"> <img src="images/logo.png" width="110px" height="100px" id="logo"></a>
        	<span id="welcome">
        		<button><h4>Sesion: <%=userSession%></h4></button>
        	</span>
        	
        	
		 	<span id="welcome">
		 		<a href="index.jsp"><button><h4>Log Out</h4></button></a>
		 	</span>
        <hr color="black" size="5">
    </div>
    <div id="contenido">
		<form action="UpdateMeNow.jsp" method="GET" id="updateItemForm">
			<input type="hidden" value="<%= item.getId()%>" name="id">
			<h1>Update an item: </h1>
			<p>
				ID:
			<br> 
			 	<%=item.getId() %>
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
				<input type="number" name="PriceItem" value="<%=item.getPrice()%>" min="0" max="300000" required><br>
				<br>
				Entry data: 
				<input type="date" name="EntryDataItem" value="<%=item.getEntry_date()%>" required><br>
				<br>
				
				<a href="store.jsp"><button name="updateCoche">Update me now</button></a>
		</form>
				<a href="store.jsp"><button name="Volver">Return to shop</button></a>
		
    </div>     

</body>
</html>