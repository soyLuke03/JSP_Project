<%@page import="com.jacaranda.Item"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Date"%>
<%@page import="com.jacaranda.DAOitem"%>

<%	
		DAOitem item = new DAOitem();
		Integer amountItem = Integer.valueOf(request.getParameter("AmountItem"));
		String nameItem =String.valueOf(request.getParameter("NameItem"));
		Boolean availableItem = Boolean.valueOf(request.getParameter("AvailableItem"));
		Double priceItem = Double.valueOf(request.getParameter("PriceItem"));
		LocalDate entryDataItem = LocalDate.parse(String.valueOf((request.getParameter("EntryDataItem"))));
		String idItem = String.valueOf(request.getParameter("id"));
		
		
		Item itemNuevo = new Item(amountItem, nameItem, availableItem, priceItem, entryDataItem, idItem);
		item.updateItem(itemNuevo);
		response.sendRedirect("store.jsp");
%>
		
