<%@page import="java.sql.Date"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="com.jacaranda.Item.Item"%>
<jsp:useBean id="daoCategory" class="com.jacaranda.Dao.DaoCategory"></jsp:useBean>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

   		 	String isSession = (String) session.getAttribute("login");
    	    String userSession = (String) session.getAttribute("usuario");
        	
        	if(isSession == null && userSession == null){
        		response.sendRedirect("../error.jsp?msg=Return to the login please");
        	}

        	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Item</title>
        <link rel="stylesheet" type="text/css" href="../css/generalStyle.css">

</head>
	<body>
			<!-- HEADER de las páginas -->
		<div id="header">
	    	<a href="store.jsp"><img src="../images/logo.png" width="110px" height="100px" id="logo"></a>
	        	<!-- Boton FalsoBoton de Session -->
	        	<span id="welcome">
	        		<button><h4>Sesion: <%=(userSession)%></h4></button>
	        	</span>
	        	<!-- Boton LogOut -->
			 	<span id="welcome">
			 		<a href="index.jsp"><button><h4>Log Out</h4></button></a>
			 	</span>
	        <hr color="black" size="5">
	    </div>
		<br>
	    
	    
	    <div id="contenido">
			<form action="addCategoryNow.jsp" method="GET" id="addCategoryForm">
			<h1>You want to add new categories?: </h1>
					<legend id="legends">
						<b>Write the required data below: </b>
					</legend>
					Name: 
					<input type="text" name="NameCategory" required>
					
					<br>
					<br>
					
					Id: 
					<input type="text" name="IdCategory" required>
					
					<br>
					<br>
					
					Description: 
					<input type="text" name="DescriptionCategory" required>
					
					<br>
					<br>
					<%String error = request.getParameter("msg_error");
		 	
		 			if(error != null) {%>
		 				<%=error %>
		 			<%}%>
					<br><button name="AddCategory">Add category</button>
			</form>
					<a href="CategoryList.jsp"><button>Return to categories</button></a>
	    </div>            
		
	
	</body>
</html>