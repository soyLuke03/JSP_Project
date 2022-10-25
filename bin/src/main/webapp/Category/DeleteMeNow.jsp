<%@ page import="com.jacaranda.Category.*" %>
<jsp:useBean id="daoCategory" class="com.jacaranda.Dao.DaoCategory"></jsp:useBean>
<%
	String id = request.getParameter("idDelete");
	daoCategory.deleteCategory(id);
	
	response.sendRedirect("CategoryList.jsp");
%>