<jsp:useBean id="category" class="com.jacaranda.Dao.DaoCategory"></jsp:useBean>
<%@ page import="com.jacaranda.Category.*" %>
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
		String nameCategory = String.valueOf(request.getParameter("NameCategory"));
		String idCategory =String.valueOf(request.getParameter("IdCategory"));
		String descriptionCategory = String.valueOf(request.getParameter("DescriptionCategory"));
		
		Category aux = new Category(idCategory, nameCategory, descriptionCategory);
		try {
			category.addCategory(aux);
			response.sendRedirect("CategoryList.jsp");
		} catch(CategoryException e) {
			response.sendRedirect("addCategory.jsp?error_msg=" + e.getMessage());
		}
	%>

</body>
</html>