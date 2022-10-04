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
                <a href="#ShoppingCart">Shopping Cart <i class="material-icons">shopping_cart</i></a>			
              </li>
              
              <li id="seccion3"  onmouseover="ver(3)" onmouseout="ocultar(3)">
                <a href="ItemRegister.jsp">Willing to sell? <i class="material-icons">sell</i></a>			
              </li>
              
              
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
                        <div class="content-1">
                            <p id="apartado" name="Food">Food</p>
                            <div class="contenido">
                                
                                <p>Esto es un objeto</p>
                                <input type="number" name="amount" placeholder="Amount"><button onclick="XXX()">Add to cart</button>
                                
                                <p>Esto es un objeto</p>
                                <input type="number" name="amount" placeholder="Amount"><button onclick="XXX()">Add to cart</button>
                                
                                <p>Esto es un objeto</p>
                                <input type="number" name="amount" placeholder="Amount"><button onclick="XXX()">Add to cart</button>
                                
                            </div>
                        </div>
                        
                        
                        <div class="content-2">
                            <p id="apartado" name="Drinks">Drinks</p>
                            <div class="contenido">


                            </div>
                        </div>
                        
                        <div class="content-3">
                            <p id="apartado"  name="Furniture">Furniture</p>
                            <div class="contenido">


                            </div>
                        </div>
                        
                        <div class="content-4">
                            <p  id="apartado" name="Materials">Materials</p>
                            <div class="contenido">


                            </div>
                        </div>
                        
                        <div class="content-5">
                            <p  id="apartado" name="Transport">Transport</p>
                            <div class="contenido">

                            </div>
                        </div>
                        
                        <div class="content-6">
                            <p  id="apartado" name="Machinery">Machinery</p>
                            <div class="contenido">

                            </div>
                        </div>
                        
                        <div class="content-7">
                            <p  id="apartado" name="Energy">Energy</p>
                            <div class="contenido">

                            </div>
                        </div>
                        
                        <div class="content-8">
                            <p  id="apartado" name="Appliances">Appliances</p>
                            <div class="contenido">


                            </div>
                        </div>
                        
                        <div class="content-9">
                            <p id="apartado"  name="Other">Other</p>
                            <div class="contenido">


                            </div>

                        </div>
                    </div>
                </div>
	    	</div>
         </form>
        

        <script src="jsScripts/script.js"></script>
	</body>
</html>