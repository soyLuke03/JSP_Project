<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.jacaranda.Item.Item"%>
<jsp:useBean id="daoItem" class="com.jacaranda.Dao.DaoItem"></jsp:useBean>
<%
//Recuperamos los parámetros de la sesión
String isSession = (String) session.getAttribute("login");
String userSession = (String) session.getAttribute("usuario");

//Recuperamos el id del item y el id de la categoria
String idItem = request.getParameter("value");
String categoryId = request.getParameter("categoryId");

/*Controlamos que no se pueda entrar a la pagina sin iniciar sesión
o en caso de que se borre el id de error*/
if (isSession == null && userSession == null) {
	response.sendRedirect("../error.jsp?error_msg=No tienes permisos, haz login.");
} else if(idItem == null || categoryId == null) {
	response.sendRedirect("../error.jsp?error_msg=Id cannot be null.");
} else {
	Item item = daoItem.getItem(idItem);%>

	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>Delete item</title>
	<link rel="stylesheet" type="text/css" href="../css/generalStyle.css">
	</head>
	<body>

		<div id="header">
			<a href="../store.jsp"> <img src="../images/logo.png"
				width="110px" height="100px" id="logo"></a> <span id="welcome">
				<button>
					<h4>
						Sesion:
						<%=userSession%></h4>
				</button>
			</span> <span id="welcome"> <a href="../index.jsp"><button>
						<h4>Log Out</h4>
					</button></a>
			</span>
			<hr color="black" size="5">
		</div>
		<div id="contenido">
			<h1>Delete item:</h1>
			<legend id="legends">
				<b>Accept: </b>
			</legend>
			¿Do you really wish to delete this item: <br>
			<%=item.getShortInfo()%>
			<br> ? <br>
			<br>
			
			<a href="DeleteMeNow.jsp?idDelete=<%=item.getId()%>&categoryId=<%=categoryId%>"><button>Delete me now</button></a> 
			<a href="../store.jsp?value=<%=categoryId%>"><button name="Volver">Return to shop</button></a>
		</div>
	</body>
	</html>
<%}%>