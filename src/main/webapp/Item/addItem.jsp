<%@page import="java.sql.Date"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="com.jacaranda.Item.Item"%>
<jsp:useBean id="daoItem" class="com.jacaranda.Dao.DaoItem"></jsp:useBean>
<jsp:useBean id="daoCategory" class="com.jacaranda.Dao.DaoCategory"></jsp:useBean>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String isSession = (String) session.getAttribute("login");
String userSession = (String) session.getAttribute("usuario");
String categoryId = request.getParameter("value");

if (isSession == null && userSession == null) {
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

	<div id="header">
		<a href="../store.jsp"> <img src="../images/logo.png" width="110px"
			height="100px" id="logo"></a> <span id="welcome">
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
		<form action="addMeNow.jsp" method="GET" id="addItemForm">
			<h1>You want to sell something?:</h1>
			
			<legend id="legends">
				<b>Write the required data below: </b>
			</legend>
			
			<label for="AmountItem">Amount</label>
			<input type="number" name="AmountItem" min="0" max="300000" required>
			<br><br>
			
			<label for="NameItem">Name</label>
			<input type="text" name="NameItem" required>
			<br><br> 
			
			<label for="AvailableItem">Available:</label>
			No<input type="radio" name="AvailableItem" value="false" required>
			Yes<input type="radio" name="AvailableItem" value="true" required>
			<br><br>
			 
			<label for="PriceItem">Price</label>
			<input type="number" name="PriceItem" min="0" max="300000" step="0.01" required>
			<br><br> 
			
			<label for="EntryDataItem">Entry data</label>
			<input type="date" name="EntryDataItem" required> 
			<br><br> 
			
			<label for="IdItem">Id code</label>
			<input type="text" name="IdItem" required>
			<br><br>
			
			<label for="categoryName">Category name</label>
			<input type="hidden" name="categoryId" value="<%=categoryId%>">
			<input type="text" value="<%=daoCategory.getCategory(categoryId).getName() %>" readonly required>
			<br><br>			

			<button type="submit">Add item</button>
		</form>
		<a href="../store.jsp?value=<%=categoryId%>"><button>Return to shop</button></a>

	</div>







</body>
</html>