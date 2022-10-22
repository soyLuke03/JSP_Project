<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.Date"%>
<%@page import="com.jacaranda.Item.Item"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<jsp:useBean id="daoItem" class="com.jacaranda.Dao.DaoItem"></jsp:useBean>
<%

	String isSession = (String) session.getAttribute("login");
	String userSession = (String) session.getAttribute("usuario");
	
	if(isSession == null && userSession == null){
		response.sendRedirect("error.jsp?msg=No tienes permisos, haz login.");
	}
	
	String idItem = request.getParameter("value");
	String categoryId = request.getParameter("categoryId");
	Item item = daoItem.getItem(idItem);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete item</title>
<link rel="stylesheet" type="text/css" href="css/generalStyle.css">
</head>
<body>
      
	<div id="header">
    	<a href="store.jsp"> <img src="images/logo.png" width="110px" height="100px" id="logo"></a>
        	<span id="welcome">
        		<button>
        			<h4>Sesion: <%=userSession%></h4>
        		</button>
        	</span>
        	
        	
		 	<span id="welcome">
		 		<a href="index.jsp"><button><h4>Log Out</h4></button></a>
		 	</span>
        <hr color="black" size="5">
    </div>
    
    <div id="contenido">
			<h1>Delete item: </h1>
				<legend id="legends">
					<b>Accept: </b>
				</legend>
				¿Do you really wish to delete this item: <br> <%=item.getShortInfo() %> <br> ? 
				
				<br>
				<br>
				
				
				<a href="DeleteMeNow.jsp?idDelete=<%=item.getId()%>&categoryId=<%=categoryId%>"><button name="EliminarCoche">Delete me now</button></a>
				<a href="store.jsp?value=<%=categoryId%>"><button name="Volver">Return to shop</button></a>
		
		
    </div>            

</body>
</html>