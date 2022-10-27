<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Date"%>
<%@page import="com.jacaranda.Item.Item"%>
<%@page import="com.jacaranda.Category.Category" %>
<jsp:useBean id="daoItem" class="com.jacaranda.Dao.DaoItem"></jsp:useBean>

<%		
		String isSession = (String) session.getAttribute("login");
		String userSession = (String) session.getAttribute("usuario");
		
		if(isSession == null && userSession == null){
			response.sendRedirect("../error.jsp?error_msg=You do not have perms, please log in");
		} else {
			int amountItem = Integer.parseInt(request.getParameter("AmountItem"));
			String nameItem = request.getParameter("NameItem");
			Boolean availableItem = Boolean.valueOf(request.getParameter("AvailableItem"));
			Double priceItem = Double.parseDouble(request.getParameter("PriceItem"));
			LocalDate entryDataItem = LocalDate.parse(request.getParameter("EntryDataItem"));
			String idItem = request.getParameter("id");
			String categoryId = request.getParameter("categoryId");
			
			Category aux = new Category(categoryId);
			Item itemNuevo = new Item(amountItem, nameItem, availableItem, priceItem, entryDataItem, idItem, aux);
			daoItem.updateItem(itemNuevo);
			response.sendRedirect("../store.jsp?value=" + categoryId);
		}
%>
		
