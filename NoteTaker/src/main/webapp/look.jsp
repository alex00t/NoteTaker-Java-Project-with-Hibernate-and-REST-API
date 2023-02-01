<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Notes</title>
<%@include file="Note_js.jsp" %>
</head>
<body>
<div class = "container py-5" >
  <%@include file="navbar.jsp" %>  <br>
  <div class="card">
  <img alt="" class="img-fluid mx-auto" style="max-width:300px " src="img/note.png">
     <h1 class="text-danger text-center text-uppercase">Successeful Add Your Note</h1>
   <br> 
  <p class=" text-center text-uppercase text-primary"><b>Show your Notes</b></p>
  <div class="container text-center" >
  <a href="Show_Notes.jsp">
  <button class = "btn btn-outline-primary text-center">Click here</button>
  </a>
  
  </div>

  </div>
  
  </div>


</body>
</html>