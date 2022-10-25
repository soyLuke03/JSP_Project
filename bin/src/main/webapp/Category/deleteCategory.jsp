<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.Category.*"%>
<jsp:useBean id="daoCategory" class="com.jacaranda.Dao.DaoCategory"></jsp:useBean>
<%
String isSession = (String) session.getAttribute("login");
String userSession = (String) session.getAttribute("usuario");

if (isSession == null && userSession == null) {
	response.sendRedirect("error.jsp?msg=No tienes permisos, haz login.");
}

String categoryId = request.getParameter("value");
Category auxCategory = daoCategory.getCategory(categoryId);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Category</title>
<link rel="stylesheet" type="text/css" href="../css/generalStyle.css">
</head>
<body>

	<div id="header">
		<img src="../images/logo.png" width="110px" height="100px" id="logo">
		<span id="welcome">
			<button>
				<h4>
					Sesion:
					<%=userSession%></h4>
			</button>
		</span> <span id="welcome"> <a href="../index.jsp"><button>
					<h4>Log Out</h4>
			</button>
		</a>
	</span>
		<hr color="black" size="5">
	</div>
	<div id="contenido">
		<h1>Delete item:</h1>
		<legend id="legends">
			<b>Accept: </b>
		</legend>
		¿Do you really wish to delete this item: <br>
		<%=auxCategory.getShortInfo() %>
		<br> ? <br>
		<br>
		
		<a href="DeleteMeNow.jsp?idDelete=<%=auxCategory.getId()%>"><button>Delete me now</button></a> 
		<a href="CategoryList.jsp?value=<%=categoryId%>"><button>Return to categories</button></a>
	</div>
</body>
</html>