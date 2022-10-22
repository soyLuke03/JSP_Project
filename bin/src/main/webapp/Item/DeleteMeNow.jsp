<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Date"%>
<jsp:useBean id="daoItem" class="com.jacaranda.Dao.DaoItem"></jsp:useBean>

<%
	String categoryId = request.getParameter("categoryId");
	String id = request.getParameter("idDelete");
	daoItem.deleteItem(id);
	response.sendRedirect("store.jsp?value=" + categoryId);
%>
	
