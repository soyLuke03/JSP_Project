<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@ page import="com.jacaranda.Item.Item" %>
<%@ page import="java.util.List"%>
<jsp:useBean id="daoItem" class="com.jacaranda.Dao.DaoItem"></jsp:useBean>
<jsp:useBean id="daoCategory" class="com.jacaranda.Dao.DaoCategory"></jsp:useBean>
<%
	//Control de sesiones
	String isSession = (String) session.getAttribute("login");
	String userSession = (String) session.getAttribute("usuario");
	String categoryId = request.getParameter("value");
	
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
		<!-- HEADER -->
		<div id="header">
    	<a href="store.jsp"><img src="images/logo.png" width="110px" height="100px" id="logo"></a>
        	<!-- Recuadro de la Session -->
        	<span id="welcome">
        		<button><h4>Session: <%=(userSession)%></h4></button>
        	</span>
        	<!-- Recuadro de Log out -->
		 	<span id="welcome">
		 		<a href="index.jsp"><button><h4>Log Out</h4></button></a>
		 	</span>
		 	<!-- Botón a Categorias -->
		 	<span id="welcome">
		 		<a href="Category/CategoryList.jsp"><button><h4>Categories</h4></button></a>
		 	</span>
		 	<!-- Botón de Add Categoria -->
		 	<span id="welcome">
		 		<a href="Item/addItem.jsp?value=<%=categoryId%>"><button name="addItem" id="addButton">Add new category</button></a> 
		 	</span>
        <!-- Línea de división -->
        <hr color="black" size="5">
		
	</div>
	<br>
	
<%
	// Listado de CATEGORIAS en la tabla
	List<Item> itemList = null;
	try {
		itemList = daoItem.getItems(categoryId);
	
	} catch (Exception e) {
		String message = e.getMessage();
		response.sendRedirect("error.jsp?msg=" + message);
	}
%>

	<div id="content-table">
		<table>
		
			<tr>
				<th>Category</th>
				<th>Amount</th>
				<th>Name</th>
				<th>Available</th>
				<th>Price</th>
				<th>Date of publish</th>
				<th>ID</th>
				<th>Delete</th>
				<th>Update</th>
			</tr>
		
		<%
				for(Item item : itemList) {
		%>
			<tr>
				<td><%=daoCategory.getCategory(categoryId).getName() %></td>
				<td><%=item.getAmount()%></td>
				<td><%=item.getName()%></td>
				<%
				if(item.getAvailability()==false){
				%>
				
					<td>
					 	false
					</td>
				<%
				}else if(item.getAvailability()==true){
				%>
					<td>
					 	true	
					</td>
				<%	
					}
				%>
				<td><%=item.getPrice()%></td>
				<td><%=item.getEntry_date()%></td>
				<td><%=item.getId()%></td>
		
				<td id="deletePic">
					<a href="Item/deleteItem.jsp?value=<%=item.getId()%>&categoryId=<%=categoryId%>"><img src="images/delete.png" width="30px"></a>
				</td>
				<td id="updatePic">
					<a href="Item/UpdateItem.jsp?value=<%=item.getId()%>&categoryId=<%=categoryId%>"><img src="images/update.png" width="30px"></a>
				</td>
			</tr>
		<%
		}	
		%>
		</table>
	</div>
</body>
</html>