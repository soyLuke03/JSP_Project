<%@page import="com.jacaranda.DataAccess.ItemDataAccess"%>
<%@page import="com.jacaranda.Item.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="css/CssShop.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        
        
		<title>Name of Shop</title>
    </head>
	<body>
	
	
	
		<% 
		ItemDataAccess ida = new ItemDataAccess();
		
		ArrayList<Item> drinks = ida.getItemList(Category.Drinks);
		ArrayList<Item> energy = ida.getItemList(Category.Energy);
		ArrayList<Item> appliances = ida.getItemList(Category.Appliances);
		ArrayList<Item> food = ida.getItemList(Category.Food);
		ArrayList<Item> furniture = ida.getItemList(Category.Furniture);
		ArrayList<Item> machinery = ida.getItemList(Category.Machinery);
		ArrayList<Item> materials = ida.getItemList(Category.Materials);
		ArrayList<Item> other = ida.getItemList(Category.Other);
		ArrayList<Item> transport = ida.getItemList(Category.Transport);
		
		int id_ = 0;
			
		%>
	

	
<div class="header">
            <div class="titulo">
                <h1>Titulo de la página (Ocupa todo el header)</h1>
            </div>
		</div>
        
        
        <div id="navegador">
            <ul>
              <li id="seccion1" onmouseover="ver(1)" onmouseout="ocultar(1)">
                <a href="#Food">Stuff we have <i class="material-icons">shop</i></a>
                <div id="subseccion1">
                  <p><a href="#Food"> Food</a></p>
                  <p><a href="#Drinks"> Drinks</a></p>
                  <p><a href="#Furniture"> Furniture</a></p>
                  <p><a href="#Materials"> Materials</a></p> 
                  <p><a href="#Transport"> Transport</a></p> 
                  <p><a href="#Machinery"> Machinery</a></p> 
                  <p><a href="#Energy"> Energy</a></p> 
                  <p><a href="#Appliances"> Appliances</a></p>
                  <p><a href="#Other"> Other</a></p> 
                </div>
              </li>
              
              <li id="seccion2"  onmouseover="ver(2)" onmouseout="ocultar(2)">
                <a href="#shopping_cart">Shopping Cart <i class="material-icons">shopping_cart</i></a>			
              </li>
              
              <li id="seccion3"  onmouseover="ver(3)" onmouseout="ocultar(3)">
                <a href="ItemRegister.jsp">Willing to sell? <i class="material-icons">sell</i></a>			
              </li>
              
              
              <div align="right">
              <p id="apartado"><a href="UserSettings.jsp">User Settings</a></p>
              </div>
              <div align="right">
              <p id="apartado"><a href="index.jsp">Log Out</a></p>
              </div>
            </ul>
            <div class="borrar"></div>
            
          </div>

        <form method="post" action="">
            <div class="contenedor">
                <div class="box">

                    
                    <div class="content-body">
                        <div class="content-1" id="Food">
                            <p id="apartado" name="Food" >Food</p>
                            <div class="contenido">
                                <p>
								<%
								for (int i =0;i<food.size();i++){
								%>
									<p id=<%id_ %>><%= food.get(i) %></p>
									<button onclick="addToCart()">Add to cart</button>
									
									
								<%
								id_++;
								}
								%>
								 </p>

                            </div>
                        </div>
                        
                        
                        <div class="content-2" id="Drinks">
                            <p id="apartado" name="Drinks">Drinks</p>
                            <div class="contenido">

								<p>
								<%
								for (int i =0;i<drinks.size();i++){
								%>
									<p id=<%id_ %>><%= drinks.get(i) %></p>
									<button onclick="addToCart()">Add to cart</button>
								<%
								id_++;
								}
								%>
								 </p>

                            </div>
                        </div>
                        
                        <div class="content-3" id="Furniture">
                            <p id="apartado"  name="Furniture">Furniture</p>
                            <div class="contenido">
								<p>
								<%
								for (int i =0;i<furniture.size();i++){
								%>
									<p id=<%id_ %>><%= furniture.get(i) %></p>
									<button onclick="addToCart()">Add to cart</button>
								<%
								id_++;
								}
								%>
								 </p>

                            </div>
                        </div>
                        
                        <div class="content-4" id="Materials">
                            <p  id="apartado" name="Materials">Materials</p>
                            <div class="contenido">
								<p>
								<%
								for (int i =0;i<materials.size();i++){
								%>
									<p id=<%id_ %>><%= materials.get(i) %></p>
									<button onclick="addToCart()">Add to cart</button>
								<%
								id_++;
								}
								%>
								 </p>


                            </div>
                        </div>
                        
                        <div class="content-5" id="Transport">
                            <p  id="apartado" name="Transport">Transport</p>
                            <div class="contenido">

								<p>
								<%
								for (int i =0;i<transport.size();i++){
								%>
									<p id=<%id_ %>><%= transport.get(i) %></p>
									<button onclick="addToCart()">Add to cart</button>
								<%
								id_++;
								}
								%>
								 </p>

                            </div>
                        </div>
                        
                        <div class="content-6" id="Machinery">
                            <p  id="apartado" name="Machinery">Machinery</p>
                            <div class="contenido">

								<p>
								<%
								for (int i =0;i<machinery.size();i++){
								%>
									<p id=<%id_ %>><%= machinery.get(i) %></p>
									<button onclick="addToCart()">Add to cart</button>
								<%
								id_++;
								}
								%>
								 </p>

                            </div>
                        </div>
                        
                        <div class="content-7" id="Energy">
                            <p  id="apartado" name="Energy">Energy</p>
                            <div class="contenido">

								<p>
								<%
								for (int i =0;i<energy.size();i++){
								%>
									<p id=<%id_ %>><%= energy.get(i) %></p>
									<button onclick="addToCart()">Add to cart</button>
								<%
								id_++;
								}
								%>
								 </p>

                            </div>
                        </div>
                        
                        <div class="content-8" id="Appliances">
                            <p  id="apartado" name="Appliances">Appliances</p>
                            <div class="contenido">

								<p>
								<%
								for (int i =0;i<appliances.size();i++){
								%>
									<p id=<%id_ %>><%= appliances.get(i) %></p>
									<button onclick="addToCart()">Add to cart</button>
								<%
								id_++;
								}
								%>
								 </p>

                            </div>
                        </div>
                        
                        <div class="content-9" id="Other">
                            <p id="apartado"  name="Other">Other</p>
                            <div class="contenido">

								<p>
								<%
								for (int i =0;i<other.size();i++){
								%>
									<p id=<%id_ %>><%= other.get(i) %></p>
									<button onclick="addToCart()">Add to cart</button>
								<%
								id_++;
								}
								%>
								 </p>

                            </div>

                        </div>
                    </div>
                </div>
	    	</div>
         </form>
         
         
         <br>
         <div align="center">
         	<button id="return"><a href="#navegador">Return to the header</a></button>
         </div>
         <br>
         <!-- Shopping cart -->
         
        <div align="center" id="shopping_cart">
            <h1>Shopping List</h1>
            <table border="2" id="shopping_list">
                <tbody id="shopping_list_body">
                    
                </tbody>
            </table>
        </div>
        

        <script src="jsScripts/script.js"></script>
	</body>
</html>