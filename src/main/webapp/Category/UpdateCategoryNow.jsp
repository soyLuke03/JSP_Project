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
	String Cname = request.getParameter("Cname");
	String CDescription = request.getParameter("CDescription");
	String CId = request.getParameter("CId");
	
	Category newCat = new Category(CId,Cname,CDescription);
	daoCategory.updateCategory(CId);
	response.sendRedirect("CategoryList.jsp");
%>
	

</body>
</html>