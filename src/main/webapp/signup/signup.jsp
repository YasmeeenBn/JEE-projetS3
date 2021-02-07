<html>
<link href="stylesheet.css" rel="stylesheet">
  <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sign Up Form</title>
        <link rel="stylesheet" href="css/normalize.css">
        <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>
        <%--<%@page import="java.sql.*" %>--%>
        <!--<form action="/register" method="post">-->
        <!--<form action="index.jsp" method="post">-->
            
         <% //
//            try{
//                Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
//                Connection conn =  DriverManager.getConnection("jdbc:derby://localhost:1527/E-commerce","root","root");
//        //        Connection conn =  DriverManager.getConnection("DB-Ecommerce","root","root");
//                Statement stmt = conn.createStatement();
//                String sql ="Insert into Cooperative(nom,adress,phone,email,password) values (:nom,:adress,:phone,:email,:password) ";
//                String sql = "INSERT INTO " + Cooperative + " VALUES (nom, , ?, ?, ?, ?, ?)";
//                ResultSet rs = stmt.executeUpdate(sql);
//                while(rs.next()){
//          %>


      
        <h1>Sign Up</h1>
        <form action="<%= request.getContextPath() %>/register" method="post">
        
        <fieldset>
            <legend><span class="number">1</span>Your basic info</legend>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name">

            <label for="adress">Adress: </label>
            <input type="text" id="adress" name="adress">

            <label for="phone">Phone Number: </label>
            <input type="text" id="phone" name="phone">

            <label for="email">Email:</label>
            <input type="email" id="email" name="email">

            <label for="password">Password:</label>
            <input type="password" id="password" name="password">
        </fieldset>
        
        <fieldset>
            <legend><span class="number">2</span>Your profile</legend>
            <label for="biography">Biography:</label>
            <textarea id="biography" name="biography"></textarea>
        </fieldset>

        <button type="submit"> Sign Up </button>
                <!--<button type="submit"  ><a href="./../accesdenied/" > sign up </a></button>-->


    </form>
        <!--</form>-->
                  </body>
    

    <!--<script src="script.js"></script>-->
</html>

