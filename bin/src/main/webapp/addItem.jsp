<%@page import="java.sql.Date"%>
<%@page import="com.jacaranda.DAOitem"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="com.jacaranda.Item"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

   		 	String isSession = (String) session.getAttribute("login");
    	    String userSession = (String) session.getAttribute("usuario");
        	
        	if(isSession == null && userSession == null){
        		response.sendRedirect("error.jsp?msg=Return to the login please");
        	}
        	
        	String idItem = request.getParameter("value");
        	
        	DAOitem daoItem = new DAOitem();
			int total = daoItem.getItems().size();
        	Item item = daoItem.getItem(idItem);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Item</title>
        <link rel="stylesheet" type="text/css" href="css/generalStyle.css">

</head>
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
		<form action="addMeNow.jsp" method="GET" id="addItemForm">
		<h1>You want to sell something?: </h1>
				<legend id="legends">
					<b>Write the required data below: </b>
				</legend>
				Amount: 
				<input type="number" name="AmountItem" min="0" max="300000" required>
				
				<br>
				<br>
				
				Name: 
				<input type="text" name="NameItem" required>
				
				<br>
				<br>
				
				Available: 
				No
				<input type="radio" name="AvailableItem" value="false" required>
				Sí 
				<input type="radio" name="AvailableItem" value="true" required>
				
				<br>
				<br>
				
				Price: 
				<input type="number" name="PriceItem"  min="0" max="300000" required>
				
				<br>
				<br>
				
				Entry data: 
				<input type="date" name="EntryDataItem" required>
				
				<br>
				<br>
				
				Id code: 
				<input type="text" name="IdItem" required>
				
				<br>
				<br>
				
				
				<button name="AddItem">Add item</button>

			
		</form>
				<a href="store.jsp"><button>Return to shop</button></a>
		
    </div>            
		
		
		
		
	
	

</body>
</html>