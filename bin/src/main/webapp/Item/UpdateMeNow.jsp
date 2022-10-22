<%@page import="com.jacaranda.Item.Item"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Date"%>
<%@page import="com.jacaranda.Category.Category" %>
<jsp:useBean id="daoItem" class="com.jacaranda.Dao.DaoItem"></jsp:useBean>

<%	
		Integer amountItem = Integer.valueOf(request.getParameter("AmountItem"));
		String nameItem =String.valueOf(request.getParameter("NameItem"));
		Boolean availableItem = Boolean.valueOf(request.getParameter("AvailableItem"));
		Double priceItem = Double.valueOf(request.getParameter("PriceItem"));
		LocalDate entryDataItem = LocalDate.parse(String.valueOf((request.getParameter("EntryDataItem"))));
		String idItem = String.valueOf(request.getParameter("id"));
		String categoryId = request.getParameter("categoryId");
		
		Category aux = new Category(categoryId);
		Item itemNuevo = new Item(amountItem, nameItem, availableItem, priceItem, entryDataItem, idItem, aux);
		daoItem.updateItem(itemNuevo);
		response.sendRedirect("store.jsp?value=" + categoryId);
%>
		
