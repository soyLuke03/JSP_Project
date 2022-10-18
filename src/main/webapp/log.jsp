<%@page import="com.jacaranda.DAOitem"%>

<%
String usuario = request.getParameter("user");
   	String password = request.getParameter("password");
    
    DAOitem dao = new DAOitem();
    if(usuario !=null && password !=null){
    	if(dao.userIsvalid(usuario, password)==true){
            			
         	session.setAttribute("login", "True");
         	session.setAttribute("usuario", usuario);
    		response.sendRedirect("store.jsp");
            		
       	} else { 
       		response.sendRedirect("index.jsp?msg_error=true");
  	 	}
	 }
%>
   