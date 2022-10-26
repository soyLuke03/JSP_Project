<jsp:useBean id="dao" class="com.jacaranda.Dao.DaoUser"></jsp:useBean>

<%
	String usuario = request.getParameter("user");
   	String password = request.getParameter("password");	
   	
   	
    if(usuario !=null && password !=null){
    	if(dao.userIsvalid(usuario, password) == true){			
         	session.setAttribute("login", "True");
         	session.setAttribute("usuario", usuario);
    		response.sendRedirect("Category/CategoryList.jsp");		
       	} else { 
       		response.sendRedirect("index.jsp?msg_error=true");
  	 	}
	 }
%>
   