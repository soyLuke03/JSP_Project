<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Date"%>
<%@page import="com.jacaranda.Item.*"%>
<%@page import="com.jacaranda.Category.*" %>
<jsp:useBean id="daoItem" class="com.jacaranda.Dao.DaoItem"></jsp:useBean>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add item method</title>
</head>
<body>
	<%
	String isSession = (String) session.getAttribute("login");
	String userSession = (String) session.getAttribute("usuario");
	int amountItem = Integer.parseInt(request.getParameter("AmountItem"));
	String nameItem = request.getParameter("NameItem");
	Boolean availableItem = Boolean.valueOf(request.getParameter("AvailableItem"));
	Double priceItem = Double.parseDouble(request.getParameter("PriceItem"));
	LocalDate entryDataItem = LocalDate.parse(String.valueOf((request.getParameter("EntryDataItem"))));
	String idItem = request.getParameter("IdItem");
	String categoryId = request.getParameter("categoryId");
	
	if(isSession == null && userSession == null) {
		response.sendRedirect("../error.jsp?error_msg=You must login to access.");
	} else {
		try {
			Category newCategory = new Category(categoryId);
			Item aux = new Item(amountItem, nameItem, availableItem, priceItem, entryDataItem, idItem, newCategory);
			daoItem.addItem(aux);
			
			response.sendRedirect("../store.jsp?value=" + categoryId);
		} catch(ItemException e) {
			response.sendRedirect("addItem.jsp?value=" + categoryId + "&error_msg=" + e.getMessage());
		}
	}
	%>

</body>
</html>