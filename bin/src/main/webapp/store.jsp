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
		<div id="header">
    	<a href="store.jsp"><img src="images/logo.png" width="110px" height="100px" id="logo"></a>
        	<span id="welcome">
        		<button><h4>Sesion: <%=(userSession)%></h4></button>
        	</span>
        	
        	
		 	<span id="welcome">
		 		<a href="index.jsp"><button><h4>Log Out</h4></button></a>
		 	</span>
		 	
		 	<span id="welcome">
		 		<a href="addItem.jsp"><button name="addItem" id="addButton" value="addItem">Willing to sell?</button></a> 
		 	</span>
        <hr color="black" size="5">
    </div>
	
	<div id="botonadd" align="right">
		
	</div>
	<br>
	
<%


	DAOitem daoItem = new DAOitem();
	List<Item> itemList = null;
	try {
		itemList = daoItem.getItems();
	
	} catch (Exception e) {
		String message = e.getMessage();
		response.sendRedirect("error.jsp?msg=" + message);
	}
%>

	<div id="content-table">
		<table>
		
			<tr>
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
				

						
					Iterator<Item> iterator = itemList.iterator();  
						
					while(iterator.hasNext()) { 
					
					Item item = iterator.next();
					String id = item.getId();
				%>
			<tr>
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
					<a href="deleteItem.jsp?value=<%=item.getId()%>"><img src="images/delete.png" width="30px"></a>
				</td>
				<td id="updatePic">
					<a href="UpdateItem.jsp?value=<%=item.getId()%>"><img src="images/update.png" width="30px"></a>
				</td>
			</tr>
		<%
		}	
		%>
		</table>
	</div>
</body>
</html>