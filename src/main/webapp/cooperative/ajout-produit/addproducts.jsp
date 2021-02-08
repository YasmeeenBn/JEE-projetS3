<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="">
<link href="stylesheet.css" rel="stylesheet">
<link href="stylesheet2.css" rel="stylesheet">
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">

<title>Add Product</title>
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

  <div class="welcome">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
          <div class="content">
            <h2>Ajouter Produits</h2>  
          </div>
        <div class="content">
          
<!--   **************************************************************** contenu ***************** -->

<div class="container">
  <form action="<%= request.getContextPath() %>/ajouterproduit" method="post" enctype="multipart/form-data">
    <div class="form-group">
      <label for="name" class="font-bold">Nom du produit <br> </label>
      <input id="name" name="name" placeholder="" type="text" class="form-control text-black pl-3 m-3 w-4/5 h-7 rounded-sm focus:ring-2 focus:ring-blue-600 focus:outline-none hover:bg-blue-200">
    </div>
    <div class="form-group">
      <label for="categorie" class="font-bold"> Categorie du produit <br> </label>
      <input id="categorie" name="categorie" placeholder="" type="text"  class="form-control text-black pl-3 m-3 w-4/5 h-7 rounded-sm focus:ring-2 focus:ring-blue-600 focus:outline-none hover:bg-blue-200" >
    </div>
    <div class="form-group">
      <label for="prix" class="font-bold">prix <br> </label>
      <input id="prix" name="prix" type="text" class="form-control text-black pl-3 m-3 w-4/5 h-7 rounded-sm focus:ring-2 focus:ring-blue-600 focus:outline-none hover:bg-blue-200">
    </div>
        <div class="form-group">
      <label for="description" class="font-bold">Description <br> </label>
      <input id="description" name="description" type="text" class="form-control text-black pl-3 m-3  w-4/5 h-7 rounded-sm focus:ring-2 focus:ring-blue-600 focus:outline-none hover:bg-blue-200">
    </div>	
    <div class="form-group">
		<label for="image" class="font-bold">Image <br> </label>
        <input type="file" name="image" /> 
	</div>
    
	<button type="submit" >Submit</button>
</form>

</div>
<!--   **************************************************************** contenu ***************** -->          
            
          </div>
        </div>
      </div>
    </div>
  </div>
  

  </section>
  
  </body>
  <script src="script.js"></script>
  <script src="script2.js"></script>



</html>
