package com;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import NoteTaker_entity.Note;
import SessionTaker.FactoryTaker;

public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UpdateServlet() {
        super();
    }


	 /* @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String title = request.getParameter("title");
			String content = request.getParameter("content_text");
			int NoteId = Integer.parseInt(request.getParameter("NoteId").trim()); 
			Session session = FactoryTaker.getFactory().openSession();
			Transaction txTransaction =session.beginTransaction();
			Note note=(Note)session.get(Note.class , NoteId);
			note.setId(NoteId);
			note.setTitle(title);
			note.setContent(content);
			note.setAddDate(new Date());
			
						
			txTransaction.commit();
			session.close();
			
			response.sendRedirect("Show_Notes.jsp");
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
