<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="">
<link href="stylesheet.css" rel="stylesheet">
<link href="stylesheet2.css" rel="stylesheet">
<title>Modifier/supprimer produit</title>
</head>
<body>


<!--   **************************************************************** SIDE BAR ************************* -->

<aside class="side-nav" id="show-side-navigation1">
  <i class="fa fa-bars close-aside hidden-sm hidden-md hidden-lg" data-close="show-side-navigation1"></i>
  <div class="heading">
    <img src="https://uniim1.shutterfly.com/ng/services/mediarender/THISLIFE/021036514417/media/23148907008/medium/1501685726/enhance" alt="">
    <div class="info">
      <h3><a href="#">Mostafa Omar</a></h3>
      <p>Lorem ipsum dolor sit amet consectetur.</p>
    </div>
  </div>
<!--   <div class="search">
    <input type="text" placeholder="Type here"><i class="fa fa-search"></i>
  </div> -->
  
  <ul class="categories">
    <li><i class="fa fa-home fa-fw" aria-hidden="true"></i><a href="#"> Dashboard</a> </li>
    <li><i class="fa fa-home fa-fw" aria-hidden="true"></i><a href="#"> Ajouter produit</a>
    <li><i class="fa fa-home fa-fw" aria-hidden="true"></i><a href="#"> mes commandes <span class="num dang">56</span> </a>
    <li><i class="fa fa-home fa-fw" aria-hidden="true"></i><a href="#"> Update produit</a>
    <li><i class="fa fa-home fa-fw" aria-hidden="true"></i><a href="#"> Profile</a>
  </ul>
</aside>

<!--   **************************************************************** SIDE BAR ***************** -->

<!--   **************************************************************** CONTENTS ***************** -->
<section id="contents">
  <nav class="navbar navbar-default">
<!--     <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
          <i class="fa fa-align-right"></i>
        </button>
        <a class="navbar-brand" href="#">my<span class="main-color">Dashboard</span></a>
      </div>

    </div> -->
  </nav>
  <div class="welcome">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
          <div class="content">
            <h2>Produits a modifier/Supprimer</h2>            
          </div>
<!--   **************************************************************** DB ***************** -->
<%@page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<div id="grid">
<%
	
//	String id = request.getParameter("id");
	try{
	    Class.forName("com.mysql.jdbc.Driver").newInstance();
	   Connection conn =  DriverManager.getConnection("jdbc:mysql://localhost:3308/projets3","root","yas");
	//     Connection conn =  DriverManager.getConnection("mysql:host=localhost;dbname=projets3","root", "");
	    Statement stmt = conn.createStatement();
	    String sql ="select * from produit where active=1 ";
	    ResultSet rs = stmt.executeQuery(sql);
	    
	//    while(rs.next()){
	    
	    %>

<table>

  <thead>
    <tr>
      <th scope="col">Produit</th>
      <th scope="col">Description</th>
      <th scope="col">Prix</th>
      <th scope="col">Categorie</th>
      <th scope="col">Modifier</th>
      <th scope="col">Supprimer</th>
   
    </tr>
  </thead>

<% while(rs.next()){ %>
  <tbody>
    <tr>
      <td data-label="name"><%= rs.getString("name")%></td>
      <td data-label="description"><%= rs.getString("description")%></td>
      <td data-label="prix"><%= rs.getString("prix")%></td>
      <td data-label="categorie"><%= rs.getString("categorie")%></td>
      
      <td> <a href="edit_update.jsp?id=<%= rs.getString("id")%>" class="btn btn-success"  >Modifier </a> </td>
      <td> <a href="delete.jsp?id=<%= rs.getString("id")%>" class="btn btn-success"  >Supprimer </a> </td>
	
    </tr>

  </tbody>
  
                        <%    }  %>   
  
</table>

<!--   **************************************************************** contenu ***************** -->
        </div>
      </div>
    </div>
  </div>
 
           <% 
                if(stmt != null){  stmt.close();  }
                if(conn != null){  conn.close();  }  }//fin bloc try 
    
                catch (Exception e){  out.print(e); }
//          %>
 

  </section>
  
  </body>
  <script src="script.js"></script>
  <script src="script2.js"></script>
</html>
