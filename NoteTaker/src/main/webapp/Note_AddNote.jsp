<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddNotes</title>
 <%@include file="Note_js.jsp" %>
</head>
<body>
<div class = "container">
  <%@include file="navbar.jsp" %>
  <h1>Please Add Notes........</h1>
  <form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="title">NoteTitle</label>
    <input required 
    name="title"
    type="text" 
    class="form-control" 
    id="exampleInputEmail1" 
    aria-describedby="emailHelp" 
    placeholder="Enter Your title">
  </div>
  <div class="form-group">
    <label for="content">Text Area</label>
  <textarea 
  name="content_text"
  required
  id="content"
  placeholder="Enter Your content"
  class="form-control"
  style="height: 250px ">
  </textarea>
   
  </div>

  <div class="container text-center ">
  
    <button type="submit" class="btn btn-primary">Add</button>
  </div>
 
</form>
  
  </div>
  

</body>
</html>