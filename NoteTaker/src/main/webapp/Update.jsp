<%@page import="NoteTaker_entity.Note"%>
<%@page import="java.util.List"%>
<%@page import="SessionTaker.FactoryTaker"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
<%@include file="Note_js.jsp"%>


</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>This is Update Page</h1>
		<%
		int NoteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session session2 = FactoryTaker.getFactory().openSession();
		Note note = (Note) session2.get(Note.class, NoteId);

		session2.close();
		%>
		<form action="UpdateServlet" method="post">
				<input value="<%=note.getId() %>" name="NoteId" type="hidden" >
		
			<div class="form-group">
				<label for="title">Note Title</label> <input required name="title"
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter Your title"
					value="<%=note.getTitle()%>">
			</div>
			<div class="form-group">
				<label for="content">Text Area</label>
				<textarea name="content_text" required id="content"
					placeholder="Enter content" class="form-control"
					style="height: 250px"> <%=note.getContent()%>
  				</textarea>

			</div>

			<div class="container text-center ">

				<button type="submit" class="btn btn-primary">Update</button>
			</div>

		</form>

	</div>

</body>
</html>