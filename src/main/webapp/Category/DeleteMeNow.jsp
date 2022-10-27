<%@ page import="com.jacaranda.Category.*" %>
<jsp:useBean id="daoCategory" class="com.jacaranda.Dao.DaoCategory"></jsp:useBean>
<%
	String isSession = (String) session.getAttribute("login");
	String userSession = (String) session.getAttribute("usuario");
	String id = request.getParameter("idDelete");
	
	if(isSession == null && userSession == null) {
		response.sendRedirect("../error.jsp?error_msg=You must login to access.");
	} else {
		daoCategory.deleteCategory(id);
		response.sendRedirect("CategoryList.jsp");
	}
%>