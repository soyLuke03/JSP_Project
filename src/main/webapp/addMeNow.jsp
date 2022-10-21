<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Date"%>
<%@page import="com.jacaranda.DAOitem"%>
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
	

		DAOitem item = new DAOitem();
		Integer amountItem = Integer.valueOf(request.getParameter("AmountItem"));
		String nameItem =String.valueOf(request.getParameter("NameItem"));
		Boolean availableItem = Boolean.valueOf(request.getParameter("AvailableItem"));
		Double priceItem = Double.valueOf(request.getParameter("PriceItem"));
		LocalDate entryDataItem = LocalDate.parse(String.valueOf((request.getParameter("EntryDataItem"))));
		String idItem = String.valueOf(request.getParameter("IdItem"));
		item.addItem(amountItem, nameItem, availableItem, priceItem, entryDataItem, idItem);
	%>
		<jsp:forward page="store.jsp"></jsp:forward>

</body>
</html>