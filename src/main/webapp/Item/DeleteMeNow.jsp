<jsp:useBean id="daoItem" class="com.jacaranda.Dao.DaoItem"></jsp:useBean>

<%
	String isSession = (String) session.getAttribute("login");
	String userSession = (String) session.getAttribute("usuario");

	if (isSession == null && userSession == null) {
		response.sendRedirect("../error.jsp?error_msg=No tienes permisos, haz login.");
	} else {
		String categoryId = request.getParameter("categoryId");
		String id = request.getParameter("idDelete");
		daoItem.deleteItem(id);
		response.sendRedirect("../store.jsp?value=" + categoryId);
	}
%>
	
