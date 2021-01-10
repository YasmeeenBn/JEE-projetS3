<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<!--    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>-->
<!--    <body>
        <div>TODO write content</div>
    </body>-->

<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>
<link href="stylesheet.css" rel="stylesheet">

<div id="wrapper">
<div class="cart-icon-top">
</div>
<div class="cart-icon-bottom">
</div>
<div id="checkout"> <li><a href="">CHECKOUT</a></li> </div>


<div id="header">	
	<ul>
        <li><a href="">HomePage</a></li>
        <li><a href="">Cooperatives</a></li>
        <li><a href="">My cart</a></li>
        <li><a href="">Contact</a></li> 
        <li><a href="http://localhost:8080/ProjetS3-Ecommerce/signin/">Sign In  </a></li>
        <li><a href="http://localhost:8080/ProjetS3-Ecommerce/signup/">Sign Up </a></li>
    </ul>		
</div>
    
<!--***************************************************************************************************************** side bar **********-->
<div id="sidebar">
    <h3>CART</h3>
    <div id="cart">
    	<span class="empty">No items in cart.</span>       
    </div>

</div>
 <!--***************************************************************************************************************** side bar **********-->
 
<div id="grid-selector">
       <div id="grid-menu">
       	   View:
           <ul>           	   
               <li class="largeGrid"><a href=""></a></li>
               <li class="smallGrid"><a class="active" href=""></a></li>
           </ul>
       </div>
       <!--Showing 1?9 of 48 results--> 
</div> 
 <%@page import="java.sql.*" %>
<div id="grid">
<%
    try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
       Connection conn =  DriverManager.getConnection("jdbc:mysql://localhost:3308/projets3","root","yas");
   //     Connection conn =  DriverManager.getConnection("mysql:host=localhost;dbname=projets3","root", "");
        Statement stmt = conn.createStatement();
        String sql ="select * from produit";
        ResultSet rs = stmt.executeQuery(sql);
        while(rs.next()){
%>


<!--***************************************************************************************************************** PRODUCT **********-->
    <div class="product">
    	<div class="info-large">
        	<h4><%= rs.getString("name")%></h4>
<%--             <div class="sku">
            	Cooperative: <strong><%= rs.getString("cooperative")%></strong>
            </div> --%>
             
            <div class="price-big">
            	<span> </span> <%= rs.getString("prix")%>
            </div>

            <button class="add-cart-large">Add To Cart</button>                          
            
        </div>
        <div class="make3D">
            <div class="product-front">
                <div class="shadow"></div>
                
                <img src="../Products-Image/<%= rs.getString("image")%>" alt="" />
                <div class="image_overlay"></div>
                <div class="add_to_cart">Add to cart</div>
                <!--<div class="view_gallery">View gallery</div>-->                
                <div class="stats">        	
                    <div class="stats-container">
                        <span class="product_price"><%= rs.getString("prix")%></span>
                        <span class="product_name"><%= rs.getString("name")%></span>    
                        <p><%= rs.getString("description")%></p>                                            
                        
                    </div>                         
                </div>
        </div>	
    </div>
    
</div>	  
<!--***************************************************************************************************************** PRODUCT **********-->

                    <%      
                }
                    %>   
                    
            <% 
                if(stmt != null){
                    stmt.close();
                }
                if (conn != null){
                    conn.close();
                }
    }//fin bloc try 
                catch (Exception e){
                    out.print(e);
                }
//          %>
            
</div>	
  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="script.js"></script>
</html>
