<%@page import="com.jacaranda.Category.Category"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="daoCategory" class="com.jacaranda.Dao.DaoCategory"></jsp:useBean>
<jsp:useBean id="category" class="com.jacaranda.Category.Category"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UpdateCategoryNow</title>
</head>
<body>
<% 
	String isSession = (String) session.getAttribute("login");
	String userSession = (String) session.getAttribute("usuario");
	String Cname = request.getParameter("CName");
	String CDescription = request.getParameter("CDescription");
	String CId = request.getParameter("CId");
	
	if(isSession == null && userSession == null) {
		response.sendRedirect("../error.jsp?error_msg=You must login to access.");
	} else if(Cname == null || CDescription == null || CId == null) {
		response.sendRedirect("../error.jsp?error_msg=Parameters cannot be null");
	} else {
		Category newCat = new Category(CId,Cname,CDescription);
		daoCategory.updateCategory(newCat);
		response.sendRedirect("CategoryList.jsp");
	}
%>
	

</body>
</html>