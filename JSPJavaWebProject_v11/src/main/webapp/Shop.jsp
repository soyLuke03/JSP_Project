<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Name of Shop</title>
		<link rel="stylesheet" type="text/css" href="css/CssShop.css">
	</head>
	<body>
	
	<%	HttpSession sessionUser = request.getSession();
		String login = (String) sessionUser.getAttribute("login");
		String userName = (String) sessionUser.getAttribute("usuario");  %>
	
		<div class="header">
            <div class="titulo">
                <h1>Titulo de la página (Ocupa todo el header)</h1>
            </div>
            <div class="user">
                <p>Usuario</p>
            </div>
		</div>
	
		<div class="sidebar">
            <p>Apartado 1</p>
            <p>Apartado 2</p>
            <p>Apartado 3</p>
            <p>Apartado 4</p>
            <p>Apartado 5</p>
            <p>Apartado 6</p>
            <p>Apartado 7</p>
            <p>Apartado 8</p>
            <p>Apartado 9</p>
        </div>

        <br>
        <p>s</p>
	
	</body>
</html>