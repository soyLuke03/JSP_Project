<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Date"%>
<%@page import="com.jacaranda.DAOitem"%>

<%

	DAOitem item = new DAOitem();
	String id = request.getParameter("idDelete");
	item.deleteItem(id);
	response.sendRedirect("store.jsp");
%>
	
