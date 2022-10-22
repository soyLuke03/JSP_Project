<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Date"%>
<%@page import="com.jacaranda.Item.Item"%>
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
		int amountItem = Integer.parseInt(request.getParameter("AmountItem"));
		String nameItem = request.getParameter("NameItem");
		Boolean availableItem = Boolean.valueOf(request.getParameter("AvailableItem"));
		Double priceItem = Double.parseDouble(request.getParameter("PriceItem"));
		LocalDate entryDataItem = LocalDate.parse(String.valueOf((request.getParameter("EntryDataItem"))));
		String idItem = request.getParameter("IdItem");
		String categoryItem = request.getParameter("categoryName");
		
		Category newCategory = new Category(categoryItem);
		Item aux = new Item(amountItem, nameItem, availableItem, priceItem, entryDataItem, idItem, newCategory);
		daoItem.addItem(aux);
		
		response.sendRedirect("store.jsp?value=" + categoryItem);
	%>

</body>
</html>