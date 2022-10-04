<%@page import="com.jacaranda.Item.Category"%>
<%@page import="com.jacaranda.Item.Item"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.jacaranda.User.*"%>
<%@ page import="com.jacaranda.DataAccess.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ItemRegister</title>
<link rel="stylesheet" href="css/cssRegister.css">
</head>
<body>
	<%
		String itemName = request.getParameter("itemName");
		String itemPrice = request.getParameter("itemPrice");
		String itemStock = request.getParameter("itemStock");
		String itemCategory = request.getParameter("itemCategory");


		if (itemName != null && itemPrice != null && itemStock != null && itemCategory != null) {
			UserDataAccess dao = new UserDataAccess();
			Item newItem = new Item( String.valueOf(itemName), Double.valueOf(itemPrice),Integer.valueOf(itemStock) , Category.valueOf(itemCategory));
			
			UserDataAccess Uda = new UserDataAccess();
			Uda.registerItem(newItem);
			
			try {
		if(dao.registerItem(newItem) == 1) {
	%>
			<a href="Shop.jsp">Volver</a>
		<%}
		} catch(UserException e) {
			out.println(e.getMessage());
		}
	}
	%>
		<form method="post" action="ItemRegister.jsp">
		
        <div class="register-body">

            <div id="borde">
                <div class="container">
                    <label>Name of the item</label>
                    <input type="text" id="itemName" name="itemName" required>
                    
                    <br>
                    <br>

                    <label>Price of the item</label>
                    <input type="number" id="itemPrice" name="itemPrice" required>
                    
                    <br>
                    <br>
                    
                    <label>How many item you want to put on?</label>
                    <input type="number" id="itemStock" name="itemStock" required> 
                    
                    <br>
                    <br>

                    <label>Category of the item:</label>
                    <select>
                    	<option value="Other">Other</option>
                    	<option value="Food">Food</option>
                    	<option value="Drinks">Drinks</option>
                    	<option value="Furniture">Furniture</option>
                    	<option value="Materials">Materials</option>
                    	<option value="Transport">Transport</option>
                    	<option value="Machinery">Machinery</option>
                    	<option value="Energy">Energy</option>
                    	<option value="Appliances">Appliances</option>
                    </select>
                
                    
                    <button type="submit">Send</button>

                </div>
            </div>
        </div>
	</form>
</body>
</html>