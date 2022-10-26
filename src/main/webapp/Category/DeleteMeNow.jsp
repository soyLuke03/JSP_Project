<%@ page import="com.jacaranda.Category.*" %>
<jsp:useBean id="daoCategory" class="com.jacaranda.Dao.DaoCategory"></jsp:useBean>
<%
	String id = request.getParameter("idDelete");
	if(id != null) {
		daoCategory.deleteCategory(id);
	}
	
	response.sendRedirect("CategoryList.jsp");
%>