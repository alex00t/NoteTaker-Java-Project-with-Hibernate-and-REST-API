<%@page import="java.util.Date"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="java.util.List"%>
<%@page import="NoteTaker_entity.*"%>

<%@page import="SessionTaker.FactoryTaker"%>
<%@page import="org.hibernate.Session"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ShowNote</title>
<%@include file="Note_js.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class=" text-uppercase text-center">All Notes</h1>

		<div class="row">
			<div class="col-12">
				<%
				Session session2 = FactoryTaker.getFactory().openSession();
				Query q = session2.createQuery("from Note");
				List<Note> li = q.list();
				for (Note note : li) {
				%>
				<div class="card m-2 text-center">
					<img class="card-img-top m-2 mx-auto" src="img/note.png"
						style="max-width: 70px" alt="Card image cap">
					<div class="card-body px-">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<p class="card-text"><%=note.getContent()%></p>
						<p>
							<b class="text-primary"> <%=note.getAddDate()%>
							</b>
						</p>
						<div class="container text=center mt-2">

							<a href="DeleteServlet?note_id=<%=note.getId()%>"
								class="btn btn-danger">Remove</a> <a
								href="Update.jsp?note_id=<%=note.getId()%>"
								class="btn btn-primary">Update</a>
						</div>
					</div>
				</div>

				<%
				/* 			out.println(note.getId() + " : " + note.getTitle() + "<br> ");
				 */ }
				%>



			</div>



		</div>




	</div>


</body>
</html>