<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Date"%>
<%@page import="com.jacaranda.DAOitem"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add category method</title>
</head>
<body>
	<%
		DAOitem category = new DAOitem();
		String nameCategory = String.valueOf(request.getParameter("NameCategory"));
		String idCategory =String.valueOf(request.getParameter("IdCategory"));
		String descriptionCategory = String.valueOf(request.getParameter("DescriptionCategory"));
		
		category.addCategory(nameCategory,idCategory,descriptionCategory);
	%>
		<jsp:forward page="CategoryList.jsp"></jsp:forward>

</body>
</html>